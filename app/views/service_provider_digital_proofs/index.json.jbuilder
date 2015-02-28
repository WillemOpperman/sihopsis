json.array!(@service_provider_digital_proofs) do |service_provider_digital_proof|
  json.extract! service_provider_digital_proof, :id, :code, :uid, :service_prover_id, :url, :source_name, :source_location, :source_location2, :local_server_file_name, :appearance_date, :service_provider_modified_date, :eis_sync_date
  json.url service_provider_digital_proof_url(service_provider_digital_proof, format: :json)
end
