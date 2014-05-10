class CreateCommunications < ActiveRecord::Migration
  def change
    create_table :communications do |t|
      t.belongs_to :provider
      t.belongs_to :contact

      t.timestamps
    end
  end
end
