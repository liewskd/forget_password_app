class RenameColumnName < ActiveRecord::Migration
  def change
      change_table :users do |t|
          t.rename :nae, :name
        end
  end
end
