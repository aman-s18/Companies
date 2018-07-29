class Company < ApplicationRecord
	#belongs_to :country
mount_uploader :image, ImageUploader
	validates :name, presence: true,
                    length: { minimum: 5 }
                    
                    
end
