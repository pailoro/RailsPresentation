class CreateUsersReports < ActiveRecord::Migration[5.1]
  def change
    create_table :users_reports do |t|
      t.belongs_to :user, foreign_key: true
      t.string :local
      t.decimal :lat, { precision: 10, scale: 6 }
      t.decimal :long, { precision: 10, scale: 6 }
      t.string :canal

      t.timestamps
    end
  end
end
