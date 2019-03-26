class CreateInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :interests do |t|
      t.string :name
      t.string :slug, unique: true

      t.timestamps
    end
  end
end
