require 'rails_helper'

RSpec.describe User, type: :model do
  let(:params) { { username: "pduke", email: "peter@gmail.com", password_digest: "$Password" } }
  subject(:user) { User.new(params) }

  describe "associations" do 
    it { should have_many(:movie_items) }
  end

  describe "validations" do

    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end

    context 'when the username is not present' do
      before { user.username = nil }

      it { should_not be_valid }

      #should validate_presence_of(:username)
    end

    context 'when the email is not present' do
      before { user.email = nil }

      it { should_not be_valid }

      #should validate_presence_of(:email)
    end

    context 'when the username is not unqiue' do
      before { user.save }
      let(:another_user) { User.new(params) }

      it 'should not be valid' do
        expect(another_user).to_not be_valid
      end
    end

    context 'when the email is not unique' do
      before { user.save }
      let(:another_user) { described_class.new(params) }

      it 'should not be valid' do
        expect(another_user).to_not be_valid
      end
    end

    context 'when the email is not formatted properly' do
      before { user.email = 'pizza doughnut sandwich' }

      it { should_not be_valid }

      #should_not allow_value("spring-is-here!").for(:email)
    end

    context 'when the password has less than 6 characters' do
      before { user.password_digest = "wee!" }

      it { should_not be_valid }
    end

    context 'when the password doesnt have a capital letter' do
      before { user.password_digest = "wee!" }

      it { should_not be_valid }
    end
  end
end
