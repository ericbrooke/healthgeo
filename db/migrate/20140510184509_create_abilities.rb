class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :name
      t.boolean :equipment
      t.references :symptom

      t.timestamps
    end
  end
end
