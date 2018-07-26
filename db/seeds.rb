# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

require 'faker'

# On va créer des users aléatoires auxquels on associe des liens postés et des commentaires eux mêmes associés aux liens (les commentaires peuvent commenter des commentaires)
5.times do
  user = User.create(name: Faker::Name.unique.name, login: Faker::Pokemon.unique.name, email: Faker::Internet.unique.email)
  5.times do
    link = Link.create(url: Faker::Internet.url)
    link.user = user
    link.save
    5.times do
      comment = Comment.create(author: Faker::Name.unique.name, content: Faker::String.random(3..12))
      comment.user = user 
      comment.link = link
      comment.save
    end
  end
end
