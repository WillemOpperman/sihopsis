class AssociateFinancialDocumentLinesController < ApplicationController
  before_action :set_associate_financial_document_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @associate_financial_document_lines = AssociateFinancialDocumentLine.all
    respond_with(@associate_financial_document_lines)
  end

  def show
    respond_with(@associate_financial_document_line)
  end

  def new
    @associate_financial_document_line = AssociateFinancialDocumentLine.new
    respond_with(@associate_financial_document_line)
  end

  def edit
  end

  def create
    @associate_financial_document_line = AssociateFinancialDocumentLine.new(associate_financial_document_line_params)
    @associate_financial_document_line.save
    respond_with(@associate_financial_document_line)
  end

  def update
    @associate_financial_document_line.update(associate_financial_document_line_params)
    respond_with(@associate_financial_document_line)
  end

  def destroy
    @associate_financial_document_line.destroy
    respond_with(@associate_financial_document_line)
  end

  private
    def set_associate_financial_document_line
      @associate_financial_document_line = AssociateFinancialDocumentLine.find(params[:id])
    end

    def associate_financial_document_line_params
      params.require(:associate_financial_document_line).permit(:uid, :code, :associate_financial_document_id, :client_financial_document_line_id, :campaign_schedule_placement_id, :client_commission_deal_associate_member_id, :client_billing_setting_line_id, :media_category_id, :amount, :amount_home, :tax_amount, :amount_inc_tax_amount, :amount_inc_tax_home_amount, :eis_sync_date)
    end
end
