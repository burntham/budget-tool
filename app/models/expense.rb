# == Schema Information
#
# Table name: expenses
#
#  id           :integer          not null, primary key
#  total_amount :decimal(, )
#  description  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  budget_id    :integer
#

class Expense < ApplicationRecord
  belongs_to :budget, :class_name => 'Budget::Budget', optional: true

  has_many :expense_details, dependent: :destroy

  accepts_nested_attributes_for :expense_details
end
