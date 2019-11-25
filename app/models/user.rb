class User < ApplicationRecord
  has_many :users_lists
  has_many :lists, through: :users_lists

  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true
end
