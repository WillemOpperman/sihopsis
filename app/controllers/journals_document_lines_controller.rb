class JournalsDocumentLinesController < ApplicationController
  before_action :set_journals_document_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @journals_document_lines = JournalsDocumentLine.all
    respond_with(@journals_document_lines)
  end

  def show
    respond_with(@journals_document_line)
  end

  def new
    @journals_document_line = JournalsDocumentLine.new
    respond_with(@journals_document_line)
  end

  def edit
  end

  def create
    @journals_document_line = JournalsDocumentLine.new(journals_document_line_params)
    @journals_document_line.save
    respond_with(@journals_document_line)
  end

  def update
    @journals_document_line.update(journals_document_line_params)
    respond_with(@journals_document_line)
  end

  def destroy
    @journals_document_line.destroy
    respond_with(@journals_document_line)
  end

  private
    def set_journals_document_line
      @journals_document_line = JournalsDocumentLine.find(params[:id])
    end

    def journals_document_line_params
      params.require(:journals_document_line).permit(:uid, :code, :name, :journals_document_id, :debit_account_no, :credit_account_no, :amount, :comments, :creation_source_id, :eis_sync_date)
    end
end
