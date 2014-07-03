class AddLikesToObservacions < ActiveRecord::Migration
  def change
    add_column :observacions, :likes, :integer
  end
end
