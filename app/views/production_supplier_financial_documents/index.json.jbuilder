json.array!(@production_supplier_financial_documents) do |production_supplier_financial_document|
  json.extract! production_supplier_financial_document, :id, :uid, :code, :supplier_id, :contact_id, :status_id, :production_wanted_cost_amount, :production_wanted_cost_home_amount, :production_cost_amount, :production_cost_home_amount, :production_cost_tax_amount, :production_cost_tax_home_amount, :production_cost_inc_tax_amount, :production_cost_inc_tax_home_amount, :currency_id, :exchange_rate, :tax_type_id, :notes, :actual_date, :posting_date, :communication_status_id, :creation_source_id, :eis_sync_date
  json.url production_supplier_financial_document_url(production_supplier_financial_document, format: :json)
end
