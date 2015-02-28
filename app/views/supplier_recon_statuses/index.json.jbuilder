json.array!(@supplier_recon_statuses) do |supplier_recon_status|
  json.extract! supplier_recon_status, :id, :uid, :code, :name, :is_active, :is_cancelled, :is_on_hold, :is_approved, :is_default, :eis_sync_date
  json.url supplier_recon_status_url(supplier_recon_status, format: :json)
end
