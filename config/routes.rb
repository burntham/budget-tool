Rails.application.routes.draw do
  resources :expense_details
  resources :expenses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
