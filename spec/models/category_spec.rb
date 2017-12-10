require 'rails_helper'

RSpec.describe Category, type: :model do
  #positive test case
  it "is valid with valid attributes" do
  	@category = FactoryBot.build_stubbed(:category)
    expect(@category).to be_valid
  end
end
