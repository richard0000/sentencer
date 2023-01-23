require 'rails_helper'

RSpec.describe Entity, :type => :model do
    subject {
        described_class.new(text: 'PLACE')
    }

    describe 'associations' do
        it { should belong_to(:entity_type) }
    end

    describe 'validations' do
        it { should validate_presence_of(:entity_type) }
        it { should validate_presence_of(:text) }
    end
end