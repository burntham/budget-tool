Rails.application.routes.draw do
  namespace :budget do
    resources :budgets
  end
  resources :budgets
  resources :expense_details
  resources :expenses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
