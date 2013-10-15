class AddNriCtoTable < ActiveRecord::Migration
  def change
      add_column :users, :NRIC, :string
  end
end
