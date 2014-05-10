class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name, null: false
      t.string :kind, null: false

      t.timestamps
    end
  end
end
