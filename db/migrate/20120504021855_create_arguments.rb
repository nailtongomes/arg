class CreateArguments < ActiveRecord::Migration
  def change
    create_table :arguments do |t|
      t.text    :content
      t.integer :user_id

      t.timestamps
    end
    add_index :arguments, [:user_id, :created_at]
  end
end
