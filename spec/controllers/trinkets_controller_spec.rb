require 'rails_helper'

describe TrinketsController do

	describe 'GET #index' do 
		it "renders the index view" do 
			get :index
			expect(response).to render_template(:index)
		end
	end
	describe 'GET #show' do
		it "renders the show view" do
			@trinket = create(:trinket)
			get :show, params: {id: @trinket.id}
			expect(response).to be_success
		end
	end

	describe 'PATCH #update'
	describe 'POST #create'
	describe 'DESTROY #delete'

end