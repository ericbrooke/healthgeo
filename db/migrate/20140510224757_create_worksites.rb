class CreateWorksites < ActiveRecord::Migration
  def change
    create_table :worksites do |t|
      t.belongs_to :provider
      t.belongs_to :location

      t.timestamps
    end
  end
end
