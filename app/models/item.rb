class Item < ApplicationRecord
    mount_uploader :image, ImageUploader
end
