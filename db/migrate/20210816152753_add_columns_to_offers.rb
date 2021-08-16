class AddColumnsToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :name, :string
    add_column :offers, :age, :integer
    add_column :offers, :price, :integer
    add_column :offers, :photo, :file
    add_column :offers, :race, :string
    add_column :offers, :description, :text
    add_column :offers, :location, :string
    add_reference :offers, :user, null: false, foreign_key: true
  end
end
