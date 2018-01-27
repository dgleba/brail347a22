class Pet < ApplicationRecord

  # https://stackoverflow.com/questions/21411988/rails-4-multiple-image-or-file-upload-using-carrierwave
  # https://github.com/carrierwaveuploader/carrierwave/blob/master/README.md#multiple-file-uploads
  
  mount_uploader :image, ImageUploader
  serialize :image, JSON # If you use SQLite, add this line.
  
end
