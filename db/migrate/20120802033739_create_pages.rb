class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :key
      t.text :value
      t.timestamps
    end
    add_index :pages, [:key]
    add_column :users, :show_html, :boolean, :default => false       
  end
end
