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

require 'rails_helper'

RSpec.describe Budget::Budget, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
