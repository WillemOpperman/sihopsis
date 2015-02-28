class ClientMaterialsController < ApplicationController
  before_action :set_client_material, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_materials = ClientMaterial.all
    respond_with(@client_materials)
  end

  def show
    respond_with(@client_material)
  end

  def new
    @client_material = ClientMaterial.new
    respond_with(@client_material)
  end

  def edit
  end

  def create
    @client_material = ClientMaterial.new(client_material_params)
    @client_material.save
    respond_with(@client_material)
  end

  def update
    @client_material.update(client_material_params)
    respond_with(@client_material)
  end

  def destroy
    @client_material.destroy
    respond_with(@client_material)
  end

  private
    def set_client_material
      @client_material = ClientMaterial.find(params[:id])
    end

    def client_material_params
      params.require(:client_material).permit(:uid, :code, :client_id, :client_product_id, :media_category_id, :advert_no, :advert_name, :advert_title, :media_category_size_id, :media_category_format_id, :notes, :creation_source_id, :creative_agency_id, :is_advert_title_auto_maintained, :is_active, :expiry_date, :eis_sync_date, :is_advert_name_auto_maintained, :is_ad_vert_number_derived_from_code)
    end
end
