require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }

  subject { user }

  describe 'when respond to email, password, etc' do
    it { should respond_to(:email) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
  end

  describe 'when email is present' do
    it { should be_valid }
  end

  describe 'when email is not present' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_confirmation_of(:password) }
  end
end
