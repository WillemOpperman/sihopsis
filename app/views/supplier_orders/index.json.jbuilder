json.array!(@supplier_orders) do |supplier_order|
  json.extract! supplier_order, :id, :uid, :code, :code_external, :company_division_id, :campaign_schedule_id, :supplier_id, :media_space_id, :contact_id, :communication_status_id, :creation_source_id, :revision_no, :order_gross_amount, :order_commission_amount, :order_nett_amount, :tax_type_id, :tax_gross_amount, :tax_nett_amount, :eis_sync_date, :order_gross_amount_home, :order_commission_amount_home, :order_nett_amount_home, :tax_gross_amount_home, :tax_nett_amount_home, :exchange_rate, :currency_id, :status_id, :order_nett_inc_tax_amount
  json.url supplier_order_url(supplier_order, format: :json)
end
