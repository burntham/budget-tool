# == Schema Information
#
# Table name: budget_category_details
#
#  id              :integer          not null, primary key
#  name            :string
#  budgeted_amount :decimal(, )
#  budget_id       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Budget::CategoryDetail < ApplicationRecord
  belongs_to :budget, optional: true
  has_many :expense_details
end
