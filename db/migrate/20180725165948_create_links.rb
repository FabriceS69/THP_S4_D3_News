class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :url
      t.belongs_to :user, index: true # On dit à la BDD de créer une colonne qui stockera un integer qui liera le link au user
      t.timestamps
    end
  end
end
