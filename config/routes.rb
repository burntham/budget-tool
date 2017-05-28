Rails.application.routes.draw do
  root to: 'home#index'

  namespace :budget do
    resources :budgets
    resources :categories #, only: [:index, :new, :create, :show, :edit]


  end
  resources :budgets
  resources :expense_details
  resources :expenses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
