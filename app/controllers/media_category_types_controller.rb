class MediaCategoryTypesController < ApplicationController
  before_action :set_media_category_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_category_types = MediaCategoryType.all
    respond_with(@media_category_types)
  end

  def show
    respond_with(@media_category_type)
  end

  def new
    @media_category_type = MediaCategoryType.new
    respond_with(@media_category_type)
  end

  def edit
  end

  def create
    @media_category_type = MediaCategoryType.new(media_category_type_params)
    @media_category_type.save
    respond_with(@media_category_type)
  end

  def update
    @media_category_type.update(media_category_type_params)
    respond_with(@media_category_type)
  end

  def destroy
    @media_category_type.destroy
    respond_with(@media_category_type)
  end

  private
    def set_media_category_type
      @media_category_type = MediaCategoryType.find(params[:id])
    end

    def media_category_type_params
      params.require(:media_category_type).permit(:uid, :code, :code_external, :name, :is_columns_enabled, :is_order_no_enabled, :is_contract_no_enabled, :is_from_to_time_enabled, :is_colour_enabled, :is_edition_enabled, :is_type_size_enabled, :is_trim_size_enabled, :is_bleed_size_enabled, :is_language_enabled, :is_material_type_enabled, :is_added_value_enabled, :instruction_name, :is_only_revised_placements_shown_on_m_i, :is_valid_for_data_entry, :is_size_on_media_advert_enabled, :is_colour_on_media_advert_enabled, :is_position_no_enabled, :is_quantity_per_unit_rate_enabled, :quantity_per_unit_rate_default, :is_quantity_enabled, :quantity_default, :default_material_deadline_days_id, :default_cancellation_days_id, :is_m_i_required_for_billing_default, :is_digital_proof_enabled, :is_contract_no_required_for_m_i, :is_billed_by_live_days, :is_multiple_material_allowed, :eis_sync_date, :is_on_street_date_enabled, :is_placement_routing_address_required_to_book, :is_placement_zero_unit_rate_allowed, :is_client_material_required_to_bill, :is_client_material_required_to_create_chase_list, :is_client_company_cost_center_required_to_book, :is_placement_ordered_required_to_bill, :is_billable, :is_media_space_contract_code_required, :is_client_contract_placement_code_required)
    end
end
