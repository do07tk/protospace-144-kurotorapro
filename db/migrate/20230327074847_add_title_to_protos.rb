class AddTitleToProtos < ActiveRecord::Migration[6.0]
  def change
    add_column :protos, :title, :string
  end
end
