class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.text :content
      t.text :problem

      t.timestamps
    end
  end
end
