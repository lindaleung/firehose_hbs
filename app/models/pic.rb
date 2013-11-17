class Pic < ActiveRecord::Base

	# can create methods that belong to the Pic
	# def about
	# 	self.emotion + ', ' + self.learned;
	# end
	
	# mounting the uploader to the model
	mount_uploader :image, ImageUploader

end
