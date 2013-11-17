# here's the amazon s3 stuff and how to pull stuff down

CarrierWave.configure do |config|

	# if we're running Rails on the production environment, use S3, not local 
	# which is what we do when it's not in production
	if Rails.env.production?

  		config.fog_credentials = {
    	:provider               => 'AWS',                        # required
	    :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],                        # required
	    :aws_secret_access_key  => ENV['AWS_SECRET_KEY']                         # required
		}
  		config.fog_directory  = ENV['AWS_BUCKET']                     # required

  		config.storage = :fog

	else

		config.storage = :file
	
	end

end