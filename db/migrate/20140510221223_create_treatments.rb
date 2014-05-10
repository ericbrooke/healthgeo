class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.belongs_to :ability
      t.belongs_to :symptom

      t.timestamps
    end
  end
end
