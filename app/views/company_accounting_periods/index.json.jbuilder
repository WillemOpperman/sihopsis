json.array!(@company_accounting_periods) do |company_accounting_period|
  json.extract! company_accounting_period, :id, :uid, :code, :name, :company_id, :start_date, :end_date, :is_open, :eis_sync_date
  json.url company_accounting_period_url(company_accounting_period, format: :json)
end
