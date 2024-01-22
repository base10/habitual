class User < ApplicationRecord
  has_secure_password :password, validations: true

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true
  validates :password_digest, presence: true
end
