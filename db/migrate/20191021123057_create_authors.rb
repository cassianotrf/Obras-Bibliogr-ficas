class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :names
      t.integer :names_total

      t.timestamps
    end
  end
end
