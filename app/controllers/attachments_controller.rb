class AttachmentsController < ApplicationController
  before_action :set_attachment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @attachments = Attachment.all
    respond_with(@attachments)
  end

  def show
    respond_with(@attachment)
  end

  def new
    @attachment = Attachment.new
    respond_with(@attachment)
  end

  def edit
  end

  def create
    @attachment = Attachment.new(attachment_params)
    @attachment.save
    respond_with(@attachment)
  end

  def update
    @attachment.update(attachment_params)
    respond_with(@attachment)
  end

  def destroy
    @attachment.destroy
    respond_with(@attachment)
  end

  private
    def set_attachment
      @attachment = Attachment.find(params[:id])
    end

    def attachment_params
      params.require(:attachment).permit(:uid, :code, :type_id, :is_stored_in_document_share, :file_path, :description, :item_entity_view_id, :related_item_id, :is_auto_attached_when_parent_is_emailed)
    end
end
