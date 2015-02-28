class SupplierDefaultContactsController < ApplicationController
  before_action :set_supplier_default_contact, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_default_contacts = SupplierDefaultContact.all
    respond_with(@supplier_default_contacts)
  end

  def show
    respond_with(@supplier_default_contact)
  end

  def new
    @supplier_default_contact = SupplierDefaultContact.new
    respond_with(@supplier_default_contact)
  end

  def edit
  end

  def create
    @supplier_default_contact = SupplierDefaultContact.new(supplier_default_contact_params)
    @supplier_default_contact.save
    respond_with(@supplier_default_contact)
  end

  def update
    @supplier_default_contact.update(supplier_default_contact_params)
    respond_with(@supplier_default_contact)
  end

  def destroy
    @supplier_default_contact.destroy
    respond_with(@supplier_default_contact)
  end

  private
    def set_supplier_default_contact
      @supplier_default_contact = SupplierDefaultContact.find(params[:id])
    end

    def supplier_default_contact_params
      params.require(:supplier_default_contact).permit(:uid, :code, :name, :supplier_id, :contact_id, :is_active, :creation_source_id, :eis_sync_date)
    end
end
