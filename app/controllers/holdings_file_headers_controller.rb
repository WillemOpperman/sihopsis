class HoldingsFileHeadersController < ApplicationController
  before_action :set_holdings_file_header, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @holdings_file_headers = HoldingsFileHeader.all
    respond_with(@holdings_file_headers)
  end

  def show
    respond_with(@holdings_file_header)
  end

  def new
    @holdings_file_header = HoldingsFileHeader.new
    respond_with(@holdings_file_header)
  end

  def edit
  end

  def create
    @holdings_file_header = HoldingsFileHeader.new(holdings_file_header_params)
    @holdings_file_header.save
    respond_with(@holdings_file_header)
  end

  def update
    @holdings_file_header.update(holdings_file_header_params)
    respond_with(@holdings_file_header)
  end

  def destroy
    @holdings_file_header.destroy
    respond_with(@holdings_file_header)
  end

  private
    def set_holdings_file_header
      @holdings_file_header = HoldingsFileHeader.find(params[:id])
    end

    def holdings_file_header_params
      params.require(:holdings_file_header).permit(:uid, :code, :generation_date, :generation_time, :network_name, :agency_name, :detail_record_counter, :gross_rate, :gross_decimals, :eis_sync_date, :network_code, :agency_code)
    end
end
