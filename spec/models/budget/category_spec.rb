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

require 'rails_helper'

RSpec.describe Budget::Category, type: :model do
  describe 'validations' do
    let(:valid_parameters){
      {
        group: 'Essentials',
        name: 'Rent'
      }
    }

    let(:invalid_parameters){
      {
          name: 'something'
      }
    }


    it 'passes validation with the correct parameters' do
      expect(Budget::Category.new(valid_parameters)).to be_valid
    end

    it 'fails validation if invalid paramaters are used' do
      expect(Budget::Category.new(invalid_parameters)).to be_invalid
    end
  end
end
