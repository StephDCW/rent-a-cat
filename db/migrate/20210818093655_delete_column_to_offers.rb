class DeleteColumnToOffers < ActiveRecord::Migration[6.0]
  def change
    remove_column :offers, :photo, :string
  end
end
