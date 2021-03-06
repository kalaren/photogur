class PicturesController < ApplicationController
	def index

		@pictures = Picture.all
		respond_to do |format|
			format.html
			format.json { render json: @pictures }
		end

	end

	def show
		if Picture.find_by_id(params[:id])
			@picture = Picture.find_by_id(params[:id])
		else
			redirect_to root_path
		end
	end

	def create
		@picture = Picture.new(params[:picture])
		if @picture.save
			redirect_to pictures_url
		else
			render :new
		end
	end

	def new
		@picture = Picture.new
	end

	def edit
		@picture = Picture.find(params[:id])
	end

	def update
		@picture = Picture.find(params[:id])

		if @picture.update_attributes(params[:picture])
			redirect_to "/pictures/#{@picture.id}"
		else
			render :edit
		end
	end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy
		redirect_to pictures_url
	end
end