class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.belongs_to :link, index: true # On dit à la BDD de créer une colonne qui stockera un integer qui liera le commentaire au lien
      t.belongs_to :user, index: true # On dit à la BDD de créer une colonne qui stockera un integer qui liera le commentaire au user
      t.timestamps
    end
  end
end
