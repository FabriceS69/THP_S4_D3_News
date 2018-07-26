class User < ApplicationRecord
  has_many :links # On crée les liens entre tables
  has_many :comments
end
