require 'rails_helper'

RSpec.describe Product, type: :model do
  #positive test case
  it "is valid with valid attributes" do
  	@product = FactoryBot.build_stubbed(:product)
    expect(@product).to be_valid
  end
end
