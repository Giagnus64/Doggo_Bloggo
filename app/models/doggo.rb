class Doggo < ApplicationRecord
    #active_record associations
    has_many :posts
    validates :name, :breed, :img_url, presence: {message: "%{value} cannot be empty."}
    validates :img_url, uniqueness: {message: "Another doggo is already using this image!"}
end
