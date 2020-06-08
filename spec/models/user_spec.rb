require 'rails_helper'

RSpec.describe User, type: :model do

  context "user object" do
    it "is valid with valid attributes" do
      @user = FactoryBot.create(:user)
      expect(@user).to be_a(User)
      expect(@user).to be_valid
    end

    it "is not valid without username" do
      bad_user = User.create(email: "baduser@yopmail.com", password: "111111")
      expect(bad_user).not_to be_valid
      expect(bad_user.errors.include?(:username)).to eq(true)
    end
  end
end
