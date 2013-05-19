class CreateBoots < ActiveRecord::Migration
  def change
    create_table :boots do |t|
    	t.string 			:first_name
    	t.string 			:last_name
    	t.string 			:cohort
    	t.references  :project

      t.timestamps
    end
  end
end
