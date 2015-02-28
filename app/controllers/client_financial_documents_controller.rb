class ClientFinancialDocumentsController < ApplicationController
  before_action :set_client_financial_document, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_financial_documents = ClientFinancialDocument.all
    respond_with(@client_financial_documents)
  end

  def show
    respond_with(@client_financial_document)
  end

  def new
    @client_financial_document = ClientFinancialDocument.new
    respond_with(@client_financial_document)
  end

  def edit
  end

  def create
    @client_financial_document = ClientFinancialDocument.new(client_financial_document_params)
    @client_financial_document.save
    respond_with(@client_financial_document)
  end

  def update
    @client_financial_document.update(client_financial_document_params)
    respond_with(@client_financial_document)
  end

  def destroy
    @client_financial_document.destroy
    respond_with(@client_financial_document)
  end

  private
    def set_client_financial_document
      @client_financial_document = ClientFinancialDocument.find(params[:id])
    end

    def client_financial_document_params
      params.require(:client_financial_document).permit(:uid, :code, :code_external, :company_id, :company_division_id, :client_id, :client_product_id, :contact_id, :campaign_id, :campaign_schedule_id, :owner_user_id, :currency_id, :creation_source_id, :status_id, :communication_status_id, :actual_date, :posting_date, :cost_gross_amount, :cost_commission_amount, :cost_nett_amount, :cost_gross_home_amount, :cost_commission_home_amount, :cost_nett_home_amount, :production_costs_amount, :production_costs_home_amount, :production_costs_margin_amount, :production_costs_margin_home_amount, :gross_amount, :commission_amount, :fees_amount, :production_costs_with_margin_amount, :nett_amount, :nett_inc_tax_amount, :gross_home_amount, :commission_home_amount, :fees_home_amount, :production_costs_with_margin_home_amount, :nett_home_amount, :nett_inc_tax_home_amount, :tax_type_id, :tax_gross_amount, :tax_nett_amount, :exchange_rate, :notes, :status_reason, :grid_layout_x_m_l, :eis_sync_date, :rate_card_unit_cost_gross, :rate_card_unit_cost_gross_home, :rate_card_unit_cost_nett, :rate_card_unit_cost_nett_home, :rate_card_cost_gross, :rate_card_cost_gross_home, :rate_card_cost_nett, :rate_card_cost_nett_home, :commission_agency_amount, :commission_agency_home_amount, :effective_discount_amount, :effective_discount_home_amount, :effective_discount_to_client_amount, :effective_discount_to_client_home_amount, :client_purchase_order_id, :cost_minimum_intermediary_margin_percentage, :cost_minimum_intermediary_margin_amount, :cost_minimum_intermediary_margin_home_amount, :actual_cost_nett, :actual_cost_nett_home, :company_cost_centre_id)
    end
end
