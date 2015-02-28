class AttachmentTypesController < ApplicationController
  before_action :set_attachment_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @attachment_types = AttachmentType.all
    respond_with(@attachment_types)
  end

  def show
    respond_with(@attachment_type)
  end

  def new
    @attachment_type = AttachmentType.new
    respond_with(@attachment_type)
  end

  def edit
  end

  def create
    @attachment_type = AttachmentType.new(attachment_type_params)
    @attachment_type.save
    respond_with(@attachment_type)
  end

  def update
    @attachment_type.update(attachment_type_params)
    respond_with(@attachment_type)
  end

  def destroy
    @attachment_type.destroy
    respond_with(@attachment_type)
  end

  private
    def set_attachment_type
      @attachment_type = AttachmentType.find(params[:id])
    end

    def attachment_type_params
      params.require(:attachment_type).permit(:uid, :code, :name, :is_default, :is_user_attached, :is_system_generated, :is_template, :is_auto_attached_when_parent_is_emailed)
    end
end
