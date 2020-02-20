json.extract! merchant, :id, :name, :description, :email, :status, :total, :created_at, :updated_at
json.url merchant_url(merchant, format: :json)
