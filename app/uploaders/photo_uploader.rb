class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  mount_uploader :image_url, PhotoUploader
end
