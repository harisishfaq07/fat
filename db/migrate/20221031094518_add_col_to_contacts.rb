class AddColToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts , :company , :string
  end
end
