class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title, :default => "Sem titulo"
      t.string :subject
      t.text :body
      t.integer :user_id
      t.boolean :active , :default => false

      t.timestamps
    end
     add_index :documents, [:user_id, :created_at]
  end
end
