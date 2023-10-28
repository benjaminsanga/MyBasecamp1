class User < ApplicationRecord
  has_secure_password
  has_many :projects

  attr_accessor :admin
end
