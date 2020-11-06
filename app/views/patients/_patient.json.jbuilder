json.extract! patient, :id, :Name, :Address, :Phone_Number, :created_at, :updated_at
json.url patient_url(patient, format: :json)
