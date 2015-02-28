class JournalsDocumentsController < ApplicationController
  before_action :set_journals_document, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @journals_documents = JournalsDocument.all
    respond_with(@journals_documents)
  end

  def show
    respond_with(@journals_document)
  end

  def new
    @journals_document = JournalsDocument.new
    respond_with(@journals_document)
  end

  def edit
  end

  def create
    @journals_document = JournalsDocument.new(journals_document_params)
    @journals_document.save
    respond_with(@journals_document)
  end

  def update
    @journals_document.update(journals_document_params)
    respond_with(@journals_document)
  end

  def destroy
    @journals_document.destroy
    respond_with(@journals_document)
  end

  private
    def set_journals_document
      @journals_document = JournalsDocument.find(params[:id])
    end

    def journals_document_params
      params.require(:journals_document).permit(:uid, :code, :name, :status_id, :company_cost_centre_id, :company_accounting_period_id, :internal_comments, :creation_source_id, :eis_sync_date, :posting_date, :actual_date, :campaign_id, :media_category_id)
    end
end
