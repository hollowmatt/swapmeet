require 'rails_helper'

describe TrinketsController do

	describe 'GET #index' do 
		it "renders the index view" do 
			get :index
			expect(response).to render_template(:index)
		end
	end
	describe 'GET #show' do
		it "renders the show view"
	end

	describe 'PATCH #update'
	describe 'POST #create'
	describe 'DESTROY #delete'

end