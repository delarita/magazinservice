class AddUserRefToService < ActiveRecord::Migration[6.1]
  def change
    add_reference :services, :user, foreign_key: true
  end
end
