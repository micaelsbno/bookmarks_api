class User < ApplicationRecord
  has_many :bookmarks
  has_secure_password
end
