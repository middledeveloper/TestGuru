# frozen_string_literal: true

class CreateEmailMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :email_messages do |t|
      t.string :email, null: false
      t.string :name
      t.text :text, null: false

      t.timestamps
    end
  end
end
