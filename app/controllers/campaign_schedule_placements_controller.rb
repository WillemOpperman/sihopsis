class CampaignSchedulePlacementsController < ApplicationController
  before_action :set_campaign_schedule_placement, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placements = CampaignSchedulePlacement.all
    respond_with(@campaign_schedule_placements)
  end

  def show
    respond_with(@campaign_schedule_placement)
  end

  def new
    @campaign_schedule_placement = CampaignSchedulePlacement.new
    respond_with(@campaign_schedule_placement)
  end

  def edit
  end

  def create
    @campaign_schedule_placement = CampaignSchedulePlacement.new(campaign_schedule_placement_params)
    @campaign_schedule_placement.save
    respond_with(@campaign_schedule_placement)
  end

  def update
    @campaign_schedule_placement.update(campaign_schedule_placement_params)
    respond_with(@campaign_schedule_placement)
  end

  def destroy
    @campaign_schedule_placement.destroy
    respond_with(@campaign_schedule_placement)
  end

  private
    def set_campaign_schedule_placement
      @campaign_schedule_placement = CampaignSchedulePlacement.find(params[:id])
    end

    def campaign_schedule_placement_params
      params.require(:campaign_schedule_placement).permit(:uid, :code, :code_external, :media_category_id, :campaign_id, :campaign_schedule_id, :client_product_id, :client_product_sub_id, :client_contact_id, :creative_agency_id, :creative_agency_contact_id, :media_agency_client_id, :media_agency_client_contact_id, :natural_client_id, :natural_client_product_id, :natural_client_contact_id, :media_space_id, :business_unit_id, :media_space_section_id, :media_space_part_id, :media_category_size_id, :media_category_format_id, :media_frequency_cap_type_id, :supplier_id, :supplier_contact_id, :owner_user_id, :manager_user_id, :currency_id, :exchange_rate, :rate_type_id, :rate_card_line_id, :cost_type_id, :quantity_per_unit_rate, :quantity, :rate_card_unit_cost_gross, :rate_card_unit_cost_gross_home, :rate_card_unit_cost_nett, :rate_card_unit_cost_nett_home, :rate_card_cost_gross, :rate_card_cost_gross_home, :rate_card_cost_nett, :rate_card_cost_nett_home, :commission_supplier_percentage, :commission_supplier_amount, :commission_supplier_home_amount, :commission_agency_percentage, :commission_agency_amount, :commission_agency_home_amount, :effective_discount_percentage, :effective_discount_amount, :effective_discount_home_amount, :effective_discount_to_client_percentage, :effective_discount_to_client_amount, :effective_discount_to_client_home_amount, :cost_gross, :cost_gross_home, :cost_nett, :cost_nett_home, :minimum_intermediary_margin_percentage, :minimum_intermediary_margin_amount, :minimum_intermediary_margin_home_amount, :effective_intermediary_margin_percentage, :effective_intermediary_margin_amount, :effective_intermediary_margin_home_amount, :actual_cost_nett, :actual_cost_nett_home, :supplier_invoiced_cost_to_date_amount, :supplier_invoiced_cost_to_date_home_amount, :supplier_invoiced_cost_commission_to_date_amount, :supplier_invoiced_cost_commission_to_date_home_amount, :supplier_invoiced_cost_nett_to_date_amount, :supplier_invoiced_cost_nett_to_date_home_amount, :supplier_invoiced_intermediary_margin_to_date_amount, :supplier_invoiced_intermediary_margin_to_date_home_amount, :supplier_invoiced_actual_cost_nett_to_date_amount, :supplier_invoiced_actual_cost_nett_to_date_home_amount, :fees, :fees_home, :fees_to_date, :fees_to_date_home, :production_cost_amount, :production_cost_home_amount, :ordered_production_cost_amount_to_date, :ordered_production_cost_amount_to_date_home, :supplier_invoiced_production_cost_to_date_amount, :supplier_invoiced_production_cost_to_date_home_amount, :effective_production_cost_margin_percentage, :production_cost_margin_amount, :production_cost_margin_home_amount, :production_cost_margin_to_date_amount, :production_cost_margin_to_date_home_amount, :production_client_billable_amount, :production_client_billable_home_amount, :production_client_invoiced_to_date_amount, :production_client_invoiced_to_date_home_amount, :client_billable_gross_amount, :client_billable_gross_home_amount, :client_billable_nett_amount, :client_billable_nett_home_amount, :client_invoiced_to_date_cost_gross_home_amount, :client_invoiced_to_date_cost_commission_home_amount, :client_invoiced_to_date_cost_nett_home_amount, :client_invoiced_to_date_gross_amount, :client_invoiced_to_date_gross_home_amount, :client_invoiced_to_date_fees_amount, :client_invoiced_to_date_fees_home_amount, :client_invoiced_to_date_production_costs_with_margin_amount, :client_invoiced_to_date_production_costs_with_margin_home_amount, :client_invoiced_to_date_nett_amount, :client_invoiced_to_date_nett_home_amount, :cost_billing_gross_home_difference_amount, :cost_billing_commission_home_difference_amount, :cost_billing_nett_home_difference_amount, :supplier_invoiced_provision_gross_home_amount)
    end
end
