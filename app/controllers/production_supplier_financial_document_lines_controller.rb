class ProductionSupplierFinancialDocumentLinesController < ApplicationController
  before_action :set_production_supplier_financial_document_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @production_supplier_financial_document_lines = ProductionSupplierFinancialDocumentLine.all
    respond_with(@production_supplier_financial_document_lines)
  end

  def show
    respond_with(@production_supplier_financial_document_line)
  end

  def new
    @production_supplier_financial_document_line = ProductionSupplierFinancialDocumentLine.new
    respond_with(@production_supplier_financial_document_line)
  end

  def edit
  end

  def create
    @production_supplier_financial_document_line = ProductionSupplierFinancialDocumentLine.new(production_supplier_financial_document_line_params)
    @production_supplier_financial_document_line.save
    respond_with(@production_supplier_financial_document_line)
  end

  def update
    @production_supplier_financial_document_line.update(production_supplier_financial_document_line_params)
    respond_with(@production_supplier_financial_document_line)
  end

  def destroy
    @production_supplier_financial_document_line.destroy
    respond_with(@production_supplier_financial_document_line)
  end

  private
    def set_production_supplier_financial_document_line
      @production_supplier_financial_document_line = ProductionSupplierFinancialDocumentLine.find(params[:id])
    end

    def production_supplier_financial_document_line_params
      params.require(:production_supplier_financial_document_line).permit(:uid, :code, :production_supplier_financial_document_id, :production_supplier_purchase_order_line_id, :wanted_unit_cost_amount, :wanted_units_id, :production_wanted_cost_amount, :production_wanted_cost_home_amount, :unit_cost_amount, :units_id, :production_cost_amount, :production_cost_home_amount, :notes, :eis_sync_date)
    end
end
