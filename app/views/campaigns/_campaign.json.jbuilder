json.extract! campaign, :id, :company_id, :segment_id, :name, :description, :status, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
