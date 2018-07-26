class Comment < ApplicationRecord
  belongs_to :user, optional: true # On crée les liens entre les tables
  belongs_to :link, optional: true
  acts_as_tree order: 'created_at DESC' # On nest les commentaires , on utilise order pour classer par ordre chronologiqeue descendant
end
