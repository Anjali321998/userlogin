class User < ApplicationRecord
	validates :email , uniqueness: true, presence: true, format: {with: /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/}
	validates :fname, :lname , presence: true , length: {maximum: 20}
	validates :password, presence: true, length: {minimum: 8, maximum: 15} 
end
