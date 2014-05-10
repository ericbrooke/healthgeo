class CreateCapabilities < ActiveRecord::Migration
  def change
    create_table :capabilities do |t|
      t.belongs_to :provider
      t.belongs_to :ability

      t.timestamps
    end
  end
end
