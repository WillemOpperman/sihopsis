class CurrencyListsController < ApplicationController
  before_action :set_currency_list, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @currency_lists = CurrencyList.all
    respond_with(@currency_lists)
  end

  def show
    respond_with(@currency_list)
  end

  def new
    @currency_list = CurrencyList.new
    respond_with(@currency_list)
  end

  def edit
  end

  def create
    @currency_list = CurrencyList.new(currency_list_params)
    @currency_list.save
    respond_with(@currency_list)
  end

  def update
    @currency_list.update(currency_list_params)
    respond_with(@currency_list)
  end

  def destroy
    @currency_list.destroy
    respond_with(@currency_list)
  end

  private
    def set_currency_list
      @currency_list = CurrencyList.find(params[:id])
    end

    def currency_list_params
      params.require(:currency_list).permit(:uid, :code, :name, :company_id, :company_division_id, :start_date, :expiry_date, :is_active, :eis_sync_date)
    end
end
