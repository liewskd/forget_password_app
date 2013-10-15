class AddNriCtoTable1 < ActiveRecord::Migration
  def change
      add_column :users, :NRIC, :string
  end
end
