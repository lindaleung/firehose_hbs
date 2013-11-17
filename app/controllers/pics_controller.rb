class PicsController < ApplicationController
	
	def index

		@pics = Pic.all

	end

	# RESTful routes; corresponds to "edit_pic GET    /pics/:id/edit(.:format) pics#edit" in rake routes
	# def edit
	# 	@pics = Pic.find(params[:id])
	# end

	def new

		@pic = Pic.new
	
	end

	def create
		@pic = Pic.create( pic_params )
		redirect_to pics_path
	end


	private

	# get stuff out of the form
	def pic_params
		# what you want to allow the user to change
		params.require(:pic).permit(:lesson, :emotion, :learned, :image)
	end

end
