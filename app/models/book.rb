class Book < ApplicationRecord
    
    belongs_to :users
    attachment :profile_image
    
end
