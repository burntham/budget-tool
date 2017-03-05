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

class Budget::Budget < ApplicationRecord
  has_many :category_details, dependent: :destroy
  has_many :expenses

  accepts_nested_attributes_for :category_details, :expenses
end
