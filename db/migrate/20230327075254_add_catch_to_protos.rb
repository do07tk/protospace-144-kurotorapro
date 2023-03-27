class AddCatchToProtos < ActiveRecord::Migration[6.0]
  def change
    add_column :protos, :catch_copy, :text
  end
end
