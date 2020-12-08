class User < ApplicationRecord
    validates :username, :email, :password, presence: true
    validates :username, :email, uniqueness: true
    validates :username, length: {minimum: 4}
    validates :password, length: {minimum: 7}

    has_many :posts, dependent: :destroy
    has_many :comments
end
