class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :email
      t.string :name
      t.string :image_url
      t.string :credential_token
      t.timestamp :credential_expires_at

      t.timestamps
    end
    add_index :users, [:provider, :uid]
    add_index :users, :email
  end
end
