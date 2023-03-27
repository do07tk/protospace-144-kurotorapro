class AddConceptToProtos < ActiveRecord::Migration[6.0]
  def change
    add_column :protos, :concept, :text
  end
end
