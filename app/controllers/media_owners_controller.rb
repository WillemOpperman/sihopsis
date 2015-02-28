class MediaOwnersController < ApplicationController
  before_action :set_media_owner, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_owners = MediaOwner.all
    respond_with(@media_owners)
  end

  def show
    respond_with(@media_owner)
  end

  def new
    @media_owner = MediaOwner.new
    respond_with(@media_owner)
  end

  def edit
  end

  def create
    @media_owner = MediaOwner.new(media_owner_params)
    @media_owner.save
    respond_with(@media_owner)
  end

  def update
    @media_owner.update(media_owner_params)
    respond_with(@media_owner)
  end

  def destroy
    @media_owner.destroy
    respond_with(@media_owner)
  end

  private
    def set_media_owner
      @media_owner = MediaOwner.find(params[:id])
    end

    def media_owner_params
      params.require(:media_owner).permit(:code, :code_external, :uid, :name, :offical_name, :default_contact_id, :creation_source_id, :phone_number, :fax_number, :e_mail, :postal_address, :physical_address, :default_commission_percentage, :default_material_deadline_days_id, :default_cancellation_days_id, :is_active, :eis_sync_date, :company_division_id)
    end
end
