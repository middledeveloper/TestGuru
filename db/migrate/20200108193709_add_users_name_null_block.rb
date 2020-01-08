# frozen_string_literal: true

class AddUsersNameNullBlock < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_null(:users, :name, :false)
    end

    def down
      change_column_null(:users, :name, :true)
    end
  end
end
