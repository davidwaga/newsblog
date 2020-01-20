class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts

  # devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  # def minimum_password_length
  #   if Devise.mappings[:user].validatable?
  #     Devise.password_length.min
  #   end
  # end
end
