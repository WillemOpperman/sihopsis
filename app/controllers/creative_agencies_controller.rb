class CreativeAgenciesController < ApplicationController
  before_action :set_creative_agency, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @creative_agencies = CreativeAgency.all
    respond_with(@creative_agencies)
  end

  def show
    respond_with(@creative_agency)
  end

  def new
    @creative_agency = CreativeAgency.new
    respond_with(@creative_agency)
  end

  def edit
  end

  def create
    @creative_agency = CreativeAgency.new(creative_agency_params)
    @creative_agency.save
    respond_with(@creative_agency)
  end

  def update
    @creative_agency.update(creative_agency_params)
    respond_with(@creative_agency)
  end

  def destroy
    @creative_agency.destroy
    respond_with(@creative_agency)
  end

  private
    def set_creative_agency
      @creative_agency = CreativeAgency.find(params[:id])
    end

    def creative_agency_params
      params.require(:creative_agency).permit(:uid, :code, :company_id, :name, :legal_name, :is_active, :postal_address, :physical_address, :phone_number, :fax_number, :e_mail, :notes, :default_contact_id)
    end
end
