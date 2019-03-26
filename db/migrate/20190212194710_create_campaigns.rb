class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :body
      t.string :link
      t.string :image
      t.datetime :expiration
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
