json.extract! asset, :id, :company_id, :name, :file_url, :created_at, :updated_at
json.url asset_url(asset, format: :json)
