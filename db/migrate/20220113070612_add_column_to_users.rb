class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :firstname, :text
    add_column :users, :lastname, :text
    add_column :users, :username, :text
    add_column :users, :gender, :string
  end
end
