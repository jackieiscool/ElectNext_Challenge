class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |t|
      t.string :firstname
      t.string :lastname
      t.string :state
      t.string :bioguide_id
      t.string :legislative_body
      t.string :party

      t.timestamps
    end
  end
end
