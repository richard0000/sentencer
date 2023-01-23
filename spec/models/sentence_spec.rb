require 'rails_helper'

RSpec.describe Sentence, :type => :model do
    subject {
        described_class.new(text: 'PLACE')
    }

    describe 'associations' do
        it { should have_and_belong_to_many(:entities) }
    end

    describe 'validations' do
        it { should validate_presence_of(:text) }
    end
end
