class User < ApplicationRecord
	attr_accessor :name, :email, :password
	
	validates(:name, presence: true, length: { maximum: 50 })
	validates(:email, presence: true, length: { maximum: 50 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true)
	validates(:password, presence: true, length: { minimum: 8 })
	
	has_secure_password
end
