# == Schema Information
#
# Table name: expense_details
#
#  id          :integer          not null, primary key
#  amount      :decimal(, )
#  description :string
#  category    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  expense_id  :integer
#

class ExpenseDetail < ApplicationRecord
  attr_accessor :amount, :description, :category
  belongs_to :expense, optional: true
end
