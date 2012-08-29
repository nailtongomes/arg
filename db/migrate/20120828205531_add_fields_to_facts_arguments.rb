class AddFieldsToFactsArguments < ActiveRecord::Migration
  def change
    add_column :arguments, :fact_id, :integer
    
    add_column :facts, :ini_term, :datetime
    add_column :facts, :fin_term, :datetime
    
    add_index(:arguments, :fact_id)
  end
end
