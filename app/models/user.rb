class User < ApplicationRecord

	validates(:name, presence: true, length: { maximum: 50 })
	validates(:email, presence: true, length: { maximum: 50 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true)
	
	has_secure_password
	
	validates(:password, presence: true, length: { minimum: 8 })
end