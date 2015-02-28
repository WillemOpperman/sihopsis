json.array!(@campaign_schedule_placement_advance_view_profiles) do |campaign_schedule_placement_advance_view_profile|
  json.extract! campaign_schedule_placement_advance_view_profile, :id, :uid, :code, :custom_layout_name, :custom_layout_x_m_l
  json.url campaign_schedule_placement_advance_view_profile_url(campaign_schedule_placement_advance_view_profile, format: :json)
end
