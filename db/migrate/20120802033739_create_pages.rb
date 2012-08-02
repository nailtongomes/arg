class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :key
      t.text :value
      t.timestamps
    end
    add_index :pages, [:key]
    add_column :users, :show_html, :boolean, :default => false
    
    keys = ['ajuda_log','frase', 'estrutura_t', 'qualidade_t', 'referencias', 'contato', 'leituras']
    for key in keys
      Page.create!(:key => key)
    end    
  end
end
