class User < ApplicationRecord
    require "securerandom"
    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
end
