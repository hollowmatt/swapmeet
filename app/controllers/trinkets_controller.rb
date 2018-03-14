class TrinketsController < ApplicationController
	before_action :set_trinket, only: [:show, :edit, :update, :destroy]
	
	# If at some point I want to setup a different layout
	# layout "trinket", only [:index]

	def index
		@trinkets = Trinket.all
	end

	def show
	end

	def new
		@trinket = Trinket.new
	end

	def edit
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

	def update
		respond_to do |format|
      if @trinket.update(trinket_params)
        format.html { redirect_to @trinket, notice: 'trinket was successfully updated.' }
        format.json { render :show, status: :ok, location: @trinket }
      else
        format.html { render :edit }
        format.json { render json: @trinket.errors, status: :unprocessable_entity }
      end
    end
  end



	def destroy
		@trinket.destroy
		respond_to do |format| 
			format.html { redirect_to trinkets_url, notice: 'Trinket was successfully deleted'}
			format.json { head :no_content }
		end
	end

	private
		def set_trinket
			@trinket = Trinket.find(params[:id])
		end

		def trinket_params
			params.require(:trinket).permit(:title, :description, :photo_path, :price)
		end
end
