class HoldingsFileHelpersController < ApplicationController
  before_action :set_holdings_file_helper, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @holdings_file_helpers = HoldingsFileHelper.all
    respond_with(@holdings_file_helpers)
  end

  def show
    respond_with(@holdings_file_helper)
  end

  def new
    @holdings_file_helper = HoldingsFileHelper.new
    respond_with(@holdings_file_helper)
  end

  def edit
  end

  def create
    @holdings_file_helper = HoldingsFileHelper.new(holdings_file_helper_params)
    @holdings_file_helper.save
    respond_with(@holdings_file_helper)
  end

  def update
    @holdings_file_helper.update(holdings_file_helper_params)
    respond_with(@holdings_file_helper)
  end

  def destroy
    @holdings_file_helper.destroy
    respond_with(@holdings_file_helper)
  end

  private
    def set_holdings_file_helper
      @holdings_file_helper = HoldingsFileHelper.find(params[:id])
    end

    def holdings_file_helper_params
      params.require(:holdings_file_helper).permit(:uid, :code, :holdings_file_header_id, :holdings_file_client_code, :holdings_file_client_name, :holdings_file_product_code, :holdings_file_product_name, :holdings_file_medium_code, :holdings_file_medium_name, :holdings_file_booked_date, :holdings_file_day_flags, :holdings_file_start_time, :holdings_file_end_time, :holdings_file_req_days_flags, :holdings_file_req_start_time, :holdings_file_req_end_time, :holdings_file_duration, :holdings_file_gross_rate, :holdings_file_gross_decimal, :holdings_file_program_name, :holdings_file_req_program_name, :holdings_file_name_for_matching, :eis_sync_date, :holdings_file_temp_code, :holdings_file_booking_code, :holdings_file_top_tailbooking_code, :holdings_file_system_client_code, :holdings_file_system_client_product_code)
    end
end
