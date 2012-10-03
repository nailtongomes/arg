class CreateMsgs < ActiveRecord::Migration
  def change
    create_table :msgs do |t|
      t.string :subject, :default => "Sem assunto"
      t.text :body
      t.integer :user_id
      t.integer :id_receiver
      t.boolean :read, :default => false

      t.timestamps
    end
      add_index :msgs, [:user_id, :created_at]
  end
end
