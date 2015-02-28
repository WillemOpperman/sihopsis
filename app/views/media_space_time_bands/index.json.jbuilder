json.array!(@media_space_time_bands) do |media_space_time_band|
  json.extract! media_space_time_band, :id, :uid, :code, :media_space_id, :time_band_name, :from_time, :to_time, :is_monday, :is_tuesday, :is_wednesday, :is_thursday, :is_friday, :is_saturday, :is_sunday
  json.url media_space_time_band_url(media_space_time_band, format: :json)
end
