class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :category
      t.string :status

      t.timestamps
    end
  end
end
