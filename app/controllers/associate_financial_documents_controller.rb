class AssociateFinancialDocumentsController < ApplicationController
  before_action :set_associate_financial_document, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @associate_financial_documents = AssociateFinancialDocument.all
    respond_with(@associate_financial_documents)
  end

  def show
    respond_with(@associate_financial_document)
  end

  def new
    @associate_financial_document = AssociateFinancialDocument.new
    respond_with(@associate_financial_document)
  end

  def edit
  end

  def create
    @associate_financial_document = AssociateFinancialDocument.new(associate_financial_document_params)
    @associate_financial_document.save
    respond_with(@associate_financial_document)
  end

  def update
    @associate_financial_document.update(associate_financial_document_params)
    respond_with(@associate_financial_document)
  end

  def destroy
    @associate_financial_document.destroy
    respond_with(@associate_financial_document)
  end

  private
    def set_associate_financial_document
      @associate_financial_document = AssociateFinancialDocument.find(params[:id])
    end

    def associate_financial_document_params
      params.require(:associate_financial_document).permit(:uid, :code, :code_external, :company_id, :company_division_id, :associate_id, :contact_id, :campaign_id, :campaign_schedule_id, :owner_user_id, :currency_id, :creation_source_id, :status_id, :communication_status_id, :company_cost_centre_id, :actual_date, :posting_date, :amount, :amount_home, :tax_amount, :amount_inc_tax_amount, :amount_inc_tax_home_amount, :tax_type_id, :exchange_rate, :notes, :status_reason, :grid_layout_x_m_l, :eis_sync_date)
    end
end
