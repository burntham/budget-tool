# == Schema Information
#
# Table name: expenses
#
#  id           :integer          not null, primary key
#  total_amount :decimal(, )
#  description  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Expense < ApplicationRecord
  has_many :expense_details

  accepts_nested_attributes_for :expense_details
end
