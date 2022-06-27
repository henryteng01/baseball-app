class Employee < ApplicationRecord
    validates :name, :biography, :profile_pic_url, presence: true
end
