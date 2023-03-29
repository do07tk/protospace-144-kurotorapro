class CreateProtos < ActiveRecord::Migration[6.0]
  def change
    create_table :protos do |t|
      t.string :title
      t.text :concept
      t.text :catch_copy
      t.timestamps
    end
  end
end
