class MediaSpacesController < ApplicationController
  before_action :set_media_space, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_spaces = MediaSpace.all
    respond_with(@media_spaces)
  end

  def show
    respond_with(@media_space)
  end

  def new
    @media_space = MediaSpace.new
    respond_with(@media_space)
  end

  def edit
  end

  def create
    @media_space = MediaSpace.new(media_space_params)
    @media_space.save
    respond_with(@media_space)
  end

  def update
    @media_space.update(media_space_params)
    respond_with(@media_space)
  end

  def destroy
    @media_space.destroy
    respond_with(@media_space)
  end

  private
    def set_media_space
      @media_space = MediaSpace.find(params[:id])
    end

    def media_space_params
      params.require(:media_space).permit(:uid, :code, :name, :media_owner_id, :media_category_id, :frequency_type_id, :is_arbitrage, :default_material_deadline_days_id, :default_cancellation_days_id, :business_unit_id, :creation_source_id, :eis_sync_date, :is_active, :m_b_r_integration_export_prover_id, :m_i_integration_export_prover_id)
    end
end
