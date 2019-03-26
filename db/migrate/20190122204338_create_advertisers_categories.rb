class CreateAdvertisersCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :advertisers_categories do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
  end
end
