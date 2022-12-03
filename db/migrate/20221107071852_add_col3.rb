class AddCol3 < ActiveRecord::Migration[6.1]
  def change
    remove_column :users , :convert
add_column :users , :convert_lead , :boolean , default: false
  end
end
