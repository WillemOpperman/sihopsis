class BusinessChannelsController < ApplicationController
  before_action :set_business_channel, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @business_channels = BusinessChannel.all
    respond_with(@business_channels)
  end

  def show
    respond_with(@business_channel)
  end

  def new
    @business_channel = BusinessChannel.new
    respond_with(@business_channel)
  end

  def edit
  end

  def create
    @business_channel = BusinessChannel.new(business_channel_params)
    @business_channel.save
    respond_with(@business_channel)
  end

  def update
    @business_channel.update(business_channel_params)
    respond_with(@business_channel)
  end

  def destroy
    @business_channel.destroy
    respond_with(@business_channel)
  end

  private
    def set_business_channel
      @business_channel = BusinessChannel.find(params[:id])
    end

    def business_channel_params
      params.require(:business_channel).permit(:uid, :code, :name, :company_id, :creation_source_id, :eis_sync_date)
    end
end
