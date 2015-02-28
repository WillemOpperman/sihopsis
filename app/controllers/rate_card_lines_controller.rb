class RateCardLinesController < ApplicationController
  before_action :set_rate_card_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @rate_card_lines = RateCardLine.all
    respond_with(@rate_card_lines)
  end

  def show
    respond_with(@rate_card_line)
  end

  def new
    @rate_card_line = RateCardLine.new
    respond_with(@rate_card_line)
  end

  def edit
  end

  def create
    @rate_card_line = RateCardLine.new(rate_card_line_params)
    @rate_card_line.save
    respond_with(@rate_card_line)
  end

  def update
    @rate_card_line.update(rate_card_line_params)
    respond_with(@rate_card_line)
  end

  def destroy
    @rate_card_line.destroy
    respond_with(@rate_card_line)
  end

  private
    def set_rate_card_line
      @rate_card_line = RateCardLine.find(params[:id])
    end

    def rate_card_line_params
      params.require(:rate_card_line).permit(:uid, :code, :rate_card_id, :rate_type_id, :desired_minimum_rate, :cost_type_id, :actual_unit_cost_gross, :overriding_supplier_commission_percentage, :actual_unit_cost_nett, :agency_commission_type_id, :agency_commission_percentage, :media_space_part_id, :media_space_section_id, :media_category_size_id, :media_category_format_id, :description)
    end
end
