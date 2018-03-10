class TrinketsController < ApplicationController
	def index
		@trinkets = Trinket.all
	end

	def new
		@trinket = Trinket.new
	end

	def create
	end

	def show
	end

	def destroy
	end

	private
		def trinket_params
			params.require(:trinket).permit(:title, :description, :photo_path, :price)
		end
end
