class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
