# frozen_string_literal: true

class AddAuthorToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :author_id, :integer
    add_index :tests, :author_id
  end
end
