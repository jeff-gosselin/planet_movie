class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
		rename_column :ratings, :number, :viewer_rating
  end
end
