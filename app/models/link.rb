class Link < ApplicationRecord
  belongs_to :user, optional: true # On crée les liens entre tables
  has_many :comments
end
