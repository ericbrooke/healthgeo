class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :name
      t.bool :equipment
      t.reference :symptom

      t.timestamps
    end
  end
end
