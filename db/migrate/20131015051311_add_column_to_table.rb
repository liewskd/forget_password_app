class AddColumnToTable < ActiveRecord::Migration
  def change
      add_column :users, :SSOE, :boolean
      add_column :users, :google, :boolean
      add_column :users, :imtl, :boolean
      add_column :users, :askLearn, :boolean
  end
end
