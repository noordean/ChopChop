class User < ApplicationRecord
  has_secure_password
  validates :name, uniqueness: true, :length => { :minimum => 5 }
  validates :password, :length => { :minimum => 5 }, format: { with: /\A^(?=.*\d)(?=.*[a-zA-Z])[a-zA-Z\d]{5,12}\z/, message: 'must be alphanumerics'}
  validates :email, uniqueness: true, format: { with: /\A[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, message: "must be valid"}
end