class DiscountCardsController < ApplicationController
  before_action :set_discount_card, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @discount_cards = DiscountCard.all
    respond_with(@discount_cards)
  end

  def show
    respond_with(@discount_card)
  end

  def new
    @discount_card = DiscountCard.new
    respond_with(@discount_card)
  end

  def edit
  end

  def create
    @discount_card = DiscountCard.new(discount_card_params)
    @discount_card.save
    respond_with(@discount_card)
  end

  def update
    @discount_card.update(discount_card_params)
    respond_with(@discount_card)
  end

  def destroy
    @discount_card.destroy
    respond_with(@discount_card)
  end

  private
    def set_discount_card
      @discount_card = DiscountCard.find(params[:id])
    end

    def discount_card_params
      params.require(:discount_card).permit(:uid, :discount_standard, :discount_negotiated, :discount_early_booking, :discount_other1, :discount_other2, :specific_company_division_id, :supplier_group_id, :supplier_id, :supplier_product_id, :client_group_id, :client_id, :client_product_id, :media_space_id, :media_space_part_id, :media_space_section_id, :media_category_size_id, :media_category_format_id, :is_active, :start_date, :expiry_date, :description, :supplier_contact_id, :is_calculated, :is_gross)
    end
end
