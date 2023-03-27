class RemoveUserIdIdFromProtos < ActiveRecord::Migration[6.0]
  def change
    remove_column :protos, :user_id_id, :integer
  end
end
