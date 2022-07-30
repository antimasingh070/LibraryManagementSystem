class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :book_users
  has_many :books, through: :book_users
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
