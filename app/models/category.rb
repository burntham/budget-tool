# == Schema Information
#
# Table name: budget_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  group      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord

  validates_presence_of :name
  validates_presence_of :group

  self.table_name = 'budget_categories'

end
