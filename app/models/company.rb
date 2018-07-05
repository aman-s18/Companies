class Company < ApplicationRecord
	#belongs_to :country

	validates :name, presence: true,
                    length: { minimum: 5 }
                    
end
