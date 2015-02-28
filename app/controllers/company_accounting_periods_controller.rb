class CompanyAccountingPeriodsController < ApplicationController
  before_action :set_company_accounting_period, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @company_accounting_periods = CompanyAccountingPeriod.all
    respond_with(@company_accounting_periods)
  end

  def show
    respond_with(@company_accounting_period)
  end

  def new
    @company_accounting_period = CompanyAccountingPeriod.new
    respond_with(@company_accounting_period)
  end

  def edit
  end

  def create
    @company_accounting_period = CompanyAccountingPeriod.new(company_accounting_period_params)
    @company_accounting_period.save
    respond_with(@company_accounting_period)
  end

  def update
    @company_accounting_period.update(company_accounting_period_params)
    respond_with(@company_accounting_period)
  end

  def destroy
    @company_accounting_period.destroy
    respond_with(@company_accounting_period)
  end

  private
    def set_company_accounting_period
      @company_accounting_period = CompanyAccountingPeriod.find(params[:id])
    end

    def company_accounting_period_params
      params.require(:company_accounting_period).permit(:uid, :code, :name, :company_id, :start_date, :end_date, :is_open, :eis_sync_date)
    end
end
