class AddActiveToFacts < ActiveRecord::Migration
  def change
    add_column :facts, :active, :boolean, default: false
    add_column :facts, :user_id, :integer
  end
end
