class AssociateProductsController < ApplicationController
  before_action :set_associate_product, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @associate_products = AssociateProduct.all
    respond_with(@associate_products)
  end

  def show
    respond_with(@associate_product)
  end

  def new
    @associate_product = AssociateProduct.new
    respond_with(@associate_product)
  end

  def edit
  end

  def create
    @associate_product = AssociateProduct.new(associate_product_params)
    @associate_product.save
    respond_with(@associate_product)
  end

  def update
    @associate_product.update(associate_product_params)
    respond_with(@associate_product)
  end

  def destroy
    @associate_product.destroy
    respond_with(@associate_product)
  end

  private
    def set_associate_product
      @associate_product = AssociateProduct.find(params[:id])
    end

    def associate_product_params
      params.require(:associate_product).permit(:code, :code_external, :uid, :name, :associate_id, :default_contact_id, :default_agency_commission_percentage, :tax_registration_no, :region, :is_active, :eis_sync_date)
    end
end
