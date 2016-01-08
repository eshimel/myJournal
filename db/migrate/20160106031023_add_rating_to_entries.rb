class AddRatingToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :rating, :integer
  end
end
