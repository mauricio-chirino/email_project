json.extract! company, :id, :name, :industry, :address, :city, :phone, :tax_id, :created_at, :updated_at
json.url company_url(company, format: :json)
