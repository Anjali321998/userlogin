class User < ApplicationRecord
	validates :email , uniqueness: true, presence: true
	validates :fname, :lname , presence: true , length: {maximum: 20}
	validates :password_digest, presence: true, length: {minimum: 8, maximum: 15} 
end
