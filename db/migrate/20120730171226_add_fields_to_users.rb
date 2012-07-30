class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :show_fact, :boolean, :default => true
    add_column :facts, :orientation, :text
  end  
end
