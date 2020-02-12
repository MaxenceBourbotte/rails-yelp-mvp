class RemoveReferencesFromReview < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :references, :string
  end
end
