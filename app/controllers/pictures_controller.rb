class PicturesController < ApplicationController
	def index

		@pictures = Picture.all

	end

	def show
		@pictures = [
			{
				title: "The old church on the coast of White sea",
				artist: "Sergey Ershov",
				url: "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
			},
			{
				title: "Sea Power",
				artist: "Stephen Scullion",
				url: "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
			},
			{
				title: "Into the Poppies",
				artist: "John Wilhelm",
				url: "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
			}
		]
		@picture = @pictures[params[:id].to_i]
	end

	def create
		render text: "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end

	def new

	end

end