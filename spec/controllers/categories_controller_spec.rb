require 'rails_helper'
require 'support/controller_helpers'

RSpec.describe CategoriesController, type: :controller do
	# it "should redirect to sign_in page when user is not logged in" do
		# post :create, params: { protocol: FactoryBot.attributes_for(:category) }
		# expect(response).to redirect_to '/users/sign_in'
	# end

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
