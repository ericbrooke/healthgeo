class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :name, null: false
      t.integer :request_count, default: 0, null: false
      # TODO: on controller, on symptom post, increment counter
      t.timestamps
    end
  end
end
