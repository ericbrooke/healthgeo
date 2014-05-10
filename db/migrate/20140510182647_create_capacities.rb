class CreateCapacities < ActiveRecord::Migration
  def change
    create_table :capacities do |t|
      t.integer :professional_count
      t.integer :patient_count
      t.references :ability

      t.timestamps
    end
  end
end
