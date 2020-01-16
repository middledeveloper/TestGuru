class CreateUsersHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :users_histories do |t|
      t.references :user, null: false, foreign_key: true
      t.references :test, null: false, foreign_key: true
      t.boolean :passed

      t.timestamps
    end
  end
end
