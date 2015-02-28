class CurrencyListRatesController < ApplicationController
  before_action :set_currency_list_rate, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @currency_list_rates = CurrencyListRate.all
    respond_with(@currency_list_rates)
  end

  def show
    respond_with(@currency_list_rate)
  end

  def new
    @currency_list_rate = CurrencyListRate.new
    respond_with(@currency_list_rate)
  end

  def edit
  end

  def create
    @currency_list_rate = CurrencyListRate.new(currency_list_rate_params)
    @currency_list_rate.save
    respond_with(@currency_list_rate)
  end

  def update
    @currency_list_rate.update(currency_list_rate_params)
    respond_with(@currency_list_rate)
  end

  def destroy
    @currency_list_rate.destroy
    respond_with(@currency_list_rate)
  end

  private
    def set_currency_list_rate
      @currency_list_rate = CurrencyListRate.find(params[:id])
    end

    def currency_list_rate_params
      params.require(:currency_list_rate).permit(:uid, :code, :name, :currency_list_id, :currency_id, :buying_rate, :selling_rate, :eis_sync_date)
    end
end
