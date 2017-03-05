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

require 'rails_helper'

RSpec.describe Budget::CategoryDetail, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
