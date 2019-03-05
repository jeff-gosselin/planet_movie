class AddPriceColumnToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :rental_price, :float
    add_column :movies, :purchase_price, :float
  end
end
