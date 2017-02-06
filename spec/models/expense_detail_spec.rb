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

require 'rails_helper'

RSpec.describe ExpenseDetail, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
