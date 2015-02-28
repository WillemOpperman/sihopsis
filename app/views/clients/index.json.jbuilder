json.array!(@clients) do |client|
  json.extract! client, :id, :code, :code_external, :uid, :name, :offical_name, :company_division_id, :creation_source_id, :company_registration_no, :default_contact_id, :link_id, :phone_number, :fax_number, :e_mail, :postal_address, :physical_address, :payment_terms, :tax_registration_no, :default_tax_type_id, :financial_year_end, :default_agency_commission_type_id, :default_agency_commission_percentage, :default_currency_id, :default_creative_agency_id, :default_creative_agency_contact_id, :default_media_agency_id, :default_media_agency_contact_id, :default_natural_id, :default_natural_contact_id, :exposure_current, :exposure30, :exposure60, :exposure90, :exposure120, :exposure_date_modified, :bank_name, :bank_account_no, :bank_branch_no, :bank_branch_name, :media_debit_note_name, :media_credit_note_name, :is_digital_proof_required, :is_digital_proof_preview_required, :is_physical_proof_required, :is_purchase_order_user_editable, :is_purchase_order_required_to_book, :is_purchase_order_approval_required_to_use, :is_purchase_order_amount_enforced, :type_id, :is_active, :eis_sync_date, :default_media_advert_source_id, :default_business_channel_id, :default_billing_id, :default_billing_contact_id, :default_natural_product_id, :name2, :is_agency_retained_commission_displayed_on_invoice, :is_placement_exchange_rate_updated_b4_billing
  json.url client_url(client, format: :json)
end
