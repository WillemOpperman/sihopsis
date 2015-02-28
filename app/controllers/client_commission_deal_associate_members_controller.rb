class ClientCommissionDealAssociateMembersController < ApplicationController
  before_action :set_client_commission_deal_associate_member, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_commission_deal_associate_members = ClientCommissionDealAssociateMember.all
    respond_with(@client_commission_deal_associate_members)
  end

  def show
    respond_with(@client_commission_deal_associate_member)
  end

  def new
    @client_commission_deal_associate_member = ClientCommissionDealAssociateMember.new
    respond_with(@client_commission_deal_associate_member)
  end

  def edit
  end

  def create
    @client_commission_deal_associate_member = ClientCommissionDealAssociateMember.new(client_commission_deal_associate_member_params)
    @client_commission_deal_associate_member.save
    respond_with(@client_commission_deal_associate_member)
  end

  def update
    @client_commission_deal_associate_member.update(client_commission_deal_associate_member_params)
    respond_with(@client_commission_deal_associate_member)
  end

  def destroy
    @client_commission_deal_associate_member.destroy
    respond_with(@client_commission_deal_associate_member)
  end

  private
    def set_client_commission_deal_associate_member
      @client_commission_deal_associate_member = ClientCommissionDealAssociateMember.find(params[:id])
    end

    def client_commission_deal_associate_member_params
      params.require(:client_commission_deal_associate_member).permit(:uid, :code, :client_commission_deal_id, :associate_id, :associate_product_id, :member_commission_split_percentage)
    end
end
