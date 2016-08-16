class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.references :user, foreign_key: true
      t.string :category
      t.date :start_date
      t.date :end_date
      t.string :title
      t.text :description
      t.string :organization

      t.timestamps
    end
  end
end
