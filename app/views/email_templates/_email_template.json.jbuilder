json.extract! email_template, :id, :campaign_id, :name, :content, :created_at, :updated_at
json.url email_template_url(email_template, format: :json)
