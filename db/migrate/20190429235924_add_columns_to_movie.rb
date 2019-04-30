class AddColumnsToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :title, :string
    add_column :movies, :overview, :string
    add_column :movies, :release_date, :string
    add_column :movies, :vote_average, :float
    add_column :movies, :poster_path, :string
    add_column :movies, :backdrop_path, :string
    add_column :movies, :ref_code, :bigint
    add_column :movies, :category, :string
  end
end
