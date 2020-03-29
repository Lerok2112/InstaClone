class RemoveLockedAt < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :locked_at, :datetime
  end
end
