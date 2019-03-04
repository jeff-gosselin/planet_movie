class AddAnotherColumnToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :ref_code, :bigint
  end
end
