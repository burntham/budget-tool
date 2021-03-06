# == Schema Information
#
# Table name: budget_budgets
#
#  id         :integer          not null, primary key
#  start_date :date
#  end_date   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Budget < ApplicationRecord
  has_many :category_details, dependent: :destroy, class_name: 'CategoryDetail'
  has_many :expenses
  has_many :expense_details, through: :expenses

  accepts_nested_attributes_for :category_details, :expenses
  self.table_name = 'budget_budgets'
end
