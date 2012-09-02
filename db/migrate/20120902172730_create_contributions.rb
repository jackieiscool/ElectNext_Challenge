class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :legislator_id
      t.integer :amount
      t.string :contributor_name
      t.string :contributor_state

      t.timestamps
    end
  end
end
