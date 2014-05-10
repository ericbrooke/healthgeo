class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :name
      t.boolean :equipment
      t.belongs_to :capacity

      t.timestamps
    end
  end
end
