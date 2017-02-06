json.extract! expense, :id, :total_amount, :description, :created_at, :updated_at
json.url expense_url(expense, format: :json)