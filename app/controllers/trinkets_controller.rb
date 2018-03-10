class TrinketsController < ApplicationController
	def index
		@trinkets = Trinket.all
	end

	def new
		@trinket = Trinket.new
	end

	def create
		@trinket = Trinket.new(trinket_params)

    respond_to do |format|
      if @trinket.save
        format.html { redirect_to @trinket, notice: 'trinket was successfully created.' }
        format.json { render :show, status: :created, location: @trinket }
      else
        format.html { render :new }
        format.json { render json: @trinket.errors, status: :unprocessable_entity }
      end
    end
	end

	def show
		@trinket = Trinket.find(params[:id])
	end

	def destroy
	end

	private
		def trinket_params
			params.require(:trinket).permit(:title, :description, :photo_path, :price)
		end
end
