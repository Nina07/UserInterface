require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
	login_user
	it "should have a current user" do
		expect(subject.current_user).to_not eq(nil)
	end

	it "should return all the records" do
		get :index
		expect(response).to render_template :index
	end

	it "should render new" do
		get :new
		expect(response).to render_template :new
	end
end
