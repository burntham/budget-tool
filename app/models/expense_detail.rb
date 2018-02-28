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
  # has_one :category_detail, foreign_key: :budget_category_detail_id

  validates_presence_of :description, :amount

  self.table_name = 'expense_details'
end
