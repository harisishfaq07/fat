class AddCol2 < ActiveRecord::Migration[6.1]
  def change
    add_column :users , :convert , :boolean
  end
end
