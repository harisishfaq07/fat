class AddCool < ActiveRecord::Migration[6.1]
  def change
    add_column :users , :telegram , :string
    add_column :users , :google_duo , :string
    add_column :users , :emo , :string
    add_column :users , :zoom , :string
  end
end
