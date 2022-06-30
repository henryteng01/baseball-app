class Employee < ApplicationRecord
    validates :name, :biography, :profile_pic_url, presence: true
    validates :name, uniqueness: true
    validates :profile_pic_url, allow_blank: false, format: {
        with: %r{\.(gif|jpg|png)\z}i,
        message: 'must be a URL for GIF, JPG or PNG image.'
    }
    validates :name, length: { minimum: 2, message: "my man your name cannot be 2 characters"}
end
