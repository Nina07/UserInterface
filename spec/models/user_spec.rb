require 'rails_helper'

RSpec.describe User, type: :model do
  #positive test case
  it "is valid with valid attributes" do
  	@user = FactoryBot.build_stubbed(:user)
    expect(@user).to be_valid
  end

  	#negative test case
  it "is not valid with invalid attributes" do
  	@user = FactoryBot.build_stubbed(:user, email: '')
    expect(@user).to_not be_valid
  end

  it "is not valid when password is not present" do
  	@user = FactoryBot.build_stubbed(:user)
  	@user.password = ""
  	expect(@user).to_not be_valid
  end

   it "is not valid when password is less than 6 characters" do
  	@user = FactoryBot.build_stubbed(:user)
  	@user.password = "123"
  	expect(@user).to_not be_valid
  end

  it "is not valid if password != password_confirmation" do
  	@user = FactoryBot.build_stubbed(:user)
  	@user.password_confirmation = "12345566"
  	expect(@user).to_not be_valid
  end
end
