class CreateAltEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :alt_emails do |t|
      t.string :alt_email
      t.integer :user_id
      t.timestamps
    end
  end
end
