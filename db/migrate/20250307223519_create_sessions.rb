class CreateSessions < ActiveRecord::Migration[8.0]
  def change
    create_table :sessions do |t|
      t.references :users, null: false, foreign_key: true
      t.references :doctors, null: false, foreign_key: true
      t.references :patients, null: false, foreign_key: true
      t.string :ip_address
      t.string :user_agent

      t.timestamps
    end
  end
end
