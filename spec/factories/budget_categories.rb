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

FactoryGirl.define do
  factory :budget_category, class: 'Budget::Category' do
    name "MyString"
    group ""
  end
end
