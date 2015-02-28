class MediaCategoryType < ActiveRecord::Base

  has_paper_trail

    belongs_to :default_material_deadline_days
    belongs_to :default_cancellation_days
  
    attr_accessible :code, :code_external, :eis_sync_date, :instruction_name, :is_added_value_enabled, :is_billable, :is_billed_by_live_days, :is_bleed_size_enabled, :is_client_company_cost_center_required_to_book, :is_client_contract_placement_code_required, :is_client_material_required_to_bill, :is_client_material_required_to_create_chase_list, :is_colour_enabled, :is_colour_on_media_advert_enabled, :is_columns_enabled, :is_contract_no_enabled, :is_contract_no_required_for_m_i, :is_digital_proof_enabled, :is_edition_enabled, :is_from_to_time_enabled, :is_language_enabled, :is_m_i_required_for_billing_default, :is_material_type_enabled, :is_media_space_contract_code_required, :is_multiple_material_allowed, :is_on_street_date_enabled, :is_only_revised_placements_shown_on_m_i, :is_order_no_enabled, :is_placement_ordered_required_to_bill, :is_placement_routing_address_required_to_book, :is_placement_zero_unit_rate_allowed, :is_position_no_enabled, :is_quantity_enabled, :is_quantity_per_unit_rate_enabled, :is_size_on_media_advert_enabled, :is_trim_size_enabled, :is_type_size_enabled, :is_valid_for_data_entry, :name, :quantity_default, :quantity_per_unit_rate_default, :uid
  
  def to_s
    name
  end

end
