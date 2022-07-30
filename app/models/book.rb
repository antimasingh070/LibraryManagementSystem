class Book < ApplicationRecord
    has_many :book_users
    has_many :users, through: :book_users
    validates :title, :number_Of_units, presence: true
    validates :description, :presence => true
end

