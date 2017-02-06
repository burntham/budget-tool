json.extract! expense_detail, :id, :amount, :description, :category, :created_at, :updated_at
json.url expense_detail_url(expense_detail, format: :json)