json.extract! contact, :id, :company_id, :email, :first_name, :last_name, :job_title, :company_name, :industry, :tax_id, :phone, :mobile, :address, :city, :created_at, :updated_at
json.url contact_url(contact, format: :json)
