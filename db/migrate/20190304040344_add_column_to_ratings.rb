class AddColumnToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :number, :integer
  end
end
