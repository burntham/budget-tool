# == Schema Information
#
# Table name: expense_details
#
#  id                        :integer          not null, primary key
#  amount                    :decimal(, )
#  description               :string
#  category                  :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  expense_id                :integer
#  budget_category_detail_id :integer
#

class ExpenseDetail < ApplicationRecord
  belongs_to :expense, optional: true
  has_one :budget_category, :class_name => 'Budget::Category'
  has_one :budget_category_detail, :class_name => 'Budget::CategoryDetail'

  validates_presence_of :description, :amount, :expense_id
end
