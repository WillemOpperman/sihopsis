json.array!(@production_supplier_purchase_orders) do |production_supplier_purchase_order|
  json.extract! production_supplier_purchase_order, :id, :uid, :code, :name, :campaign_schedule_id, :supplier_id, :contact_id, :status_id, :postal_address, :physical_address, :production_cost_amount, :production_cost_home_amount, :production_cost_tax_amount, :production_cost_tax_home_amount, :production_cost_inc_tax_amount, :production_cost_inc_tax_home_amount, :tax_type_id, :currency_id, :exchange_rate, :notes, :communication_status_id, :creation_source_id, :eis_sync_date
  json.url production_supplier_purchase_order_url(production_supplier_purchase_order, format: :json)
end
