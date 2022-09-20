require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model' do
    subject { User.new(username: 'Kingsley', role: 'admin') }
    before { subject.save }

    context 'valid' do
      it 'user to be valid' do
        expect(subject).to be_valid
      end

      it 'name of username to be valid' do
        expect(subject.username).to eq 'Kingsley'
      end

      it 'role of user to be valid' do
        expect(subject.role).to eq 'admin'
      end
    end

    context 'invalid' do
      it 'check the name is not blank' do
        expect(subject.username).to eq 'Kingsley'
      end

      it 'check the name is not blank' do
        expect(subject.role).to eq 'admin'
      end
    end
  end
end
