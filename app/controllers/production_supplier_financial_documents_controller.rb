class ProductionSupplierFinancialDocumentsController < ApplicationController
  before_action :set_production_supplier_financial_document, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @production_supplier_financial_documents = ProductionSupplierFinancialDocument.all
    respond_with(@production_supplier_financial_documents)
  end

  def show
    respond_with(@production_supplier_financial_document)
  end

  def new
    @production_supplier_financial_document = ProductionSupplierFinancialDocument.new
    respond_with(@production_supplier_financial_document)
  end

  def edit
  end

  def create
    @production_supplier_financial_document = ProductionSupplierFinancialDocument.new(production_supplier_financial_document_params)
    @production_supplier_financial_document.save
    respond_with(@production_supplier_financial_document)
  end

  def update
    @production_supplier_financial_document.update(production_supplier_financial_document_params)
    respond_with(@production_supplier_financial_document)
  end

  def destroy
    @production_supplier_financial_document.destroy
    respond_with(@production_supplier_financial_document)
  end

  private
    def set_production_supplier_financial_document
      @production_supplier_financial_document = ProductionSupplierFinancialDocument.find(params[:id])
    end

    def production_supplier_financial_document_params
      params.require(:production_supplier_financial_document).permit(:uid, :code, :supplier_id, :contact_id, :status_id, :production_wanted_cost_amount, :production_wanted_cost_home_amount, :production_cost_amount, :production_cost_home_amount, :production_cost_tax_amount, :production_cost_tax_home_amount, :production_cost_inc_tax_amount, :production_cost_inc_tax_home_amount, :currency_id, :exchange_rate, :tax_type_id, :notes, :actual_date, :posting_date, :communication_status_id, :creation_source_id, :eis_sync_date)
    end
end
