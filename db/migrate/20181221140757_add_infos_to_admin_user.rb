class AddInfosToAdminUser < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_users, :role, :string
    add_column :admin_users, :afiliada_id, :integer
    add_column :admin_users, :razao_social, :string
    add_column :admin_users, :phone, :string

    add_column :admin_users, :invitation_token, :string
    add_column :admin_users, :invitation_created_at, :datetime
    add_column :admin_users, :invitation_sent_at, :datetime
    add_column :admin_users, :invitation_accepted_at, :datetime
    add_column :admin_users, :invitation_limit, :integer
    add_column :admin_users, :invited_by_id, :integer
    add_column :admin_users, :invited_by_type, :string
    add_index :admin_users, :invitation_token, :unique => true

    # Allow null encrypted_password
    change_column_null :admin_users, :encrypted_password, :string, true
  end
end
