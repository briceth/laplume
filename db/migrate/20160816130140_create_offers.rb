class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.references :user, foreign_key: true
      t.references :mission, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
