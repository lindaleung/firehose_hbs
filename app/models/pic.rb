class Pic < ActiveRecord::Base

	# can create methods that belong to the Pic
	def about
		self.emotion + ', ' + self.learned;
	end
end
