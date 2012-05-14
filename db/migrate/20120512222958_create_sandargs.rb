class CreateSandargs < ActiveRecord::Migration
  def change
    create_table :sandargs do |t|      
      t.text    :claim
      t.text    :ground
      t.text    :warrant
      t.text    :backing
      t.text    :rebuttal
      t.text    :qualifier
      t.boolean :overwrite, :default => true
      t.text    :content      
      t.integer :user_id

      t.timestamps
    end
    add_index :sandargs, [:user_id]
  end
end
