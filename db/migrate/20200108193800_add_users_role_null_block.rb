# frozen_string_literal: true

class AddUsersRoleNullBlock < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_null(:users, :role, :false)
    end

    def down
      change_column_null(:users, :role, :true)
    end
  end
end
