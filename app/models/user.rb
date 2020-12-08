class User < ApplicationRecord
    validates :username, :email, :password, presence: true
    validates :username, length: {minimum: 4}
    validates :password, length: {minimum: 6}
end
