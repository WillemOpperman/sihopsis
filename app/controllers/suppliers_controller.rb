class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @suppliers = Supplier.all
    respond_with(@suppliers)
  end

  def show
    respond_with(@supplier)
  end

  def new
    @supplier = Supplier.new
    respond_with(@supplier)
  end

  def edit
  end

  def create
    @supplier = Supplier.new(supplier_params)
    @supplier.save
    respond_with(@supplier)
  end

  def update
    @supplier.update(supplier_params)
    respond_with(@supplier)
  end

  def destroy
    @supplier.destroy
    respond_with(@supplier)
  end

  private
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    def supplier_params
      params.require(:supplier).permit(:code, :code_external, :uid, :name, :offical_name, :company_id, :company_division_id, :company_registration_no, :default_contact_id, :creation_source_id, :type_id, :phone_number, :fax_number, :e_mail, :postal_address, :physical_address, :payment_terms, :tax_registration_no, :default_tax_type_id, :financial_year_end, :commission_percentage_default, :default_currency_id, :is_active, :eis_sync_date)
    end
end
