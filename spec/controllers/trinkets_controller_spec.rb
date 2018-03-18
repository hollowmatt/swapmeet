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

	describe 'POST #create' do 
		before do
			@trinkets = Trinket.all
		end
		it "creates a trinket" do 
			trinket_params = FactoryBot.attributes_for(:trinket)
			expect {
        post :create, params: { trinket: trinket_params }
       }.to change(@trinkets, :count).by(1)
		end
	end	
	
	describe 'PATCH #update' do
		before do
			@trinket = create(:trinket)
		end
		it "updates a trinket" do
			trinket_params = FactoryBot.attributes_for(:trinket, description: "New Description")
			patch :update, params: {id: @trinket.id, trinket: trinket_params }
			expect(@trinket.reload.description).to eq "New Description"
		end
	end
	
	describe 'DESTROY #delete' do
		before do
			@trinket = create(:trinket)
		end
	end


end