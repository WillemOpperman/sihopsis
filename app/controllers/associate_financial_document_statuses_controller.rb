class AssociateFinancialDocumentStatusesController < ApplicationController
  before_action :set_associate_financial_document_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @associate_financial_document_statuses = AssociateFinancialDocumentStatus.all
    respond_with(@associate_financial_document_statuses)
  end

  def show
    respond_with(@associate_financial_document_status)
  end

  def new
    @associate_financial_document_status = AssociateFinancialDocumentStatus.new
    respond_with(@associate_financial_document_status)
  end

  def edit
  end

  def create
    @associate_financial_document_status = AssociateFinancialDocumentStatus.new(associate_financial_document_status_params)
    @associate_financial_document_status.save
    respond_with(@associate_financial_document_status)
  end

  def update
    @associate_financial_document_status.update(associate_financial_document_status_params)
    respond_with(@associate_financial_document_status)
  end

  def destroy
    @associate_financial_document_status.destroy
    respond_with(@associate_financial_document_status)
  end

  private
    def set_associate_financial_document_status
      @associate_financial_document_status = AssociateFinancialDocumentStatus.find(params[:id])
    end

    def associate_financial_document_status_params
      params.require(:associate_financial_document_status).permit(:uid, :code, :name, :is_status_active, :is_cancelled, :is_approved, :is_default, :is_exported, :is_active, :eis_sync_date)
    end
end
