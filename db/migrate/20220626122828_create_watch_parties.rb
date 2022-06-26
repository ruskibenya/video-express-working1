class CreateWatchParties < ActiveRecord::Migration[6.1]
  def change
    create_table :watch_parties do |t|
      t.string :session_id, null: false
      t.boolean :expired, default: false

      t.timestamps
    end
  end
end
