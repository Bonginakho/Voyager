class ChangeCategoryTypeToInteger < ActiveRecord::Migration[7.1]
  def change
    change_column :packages, :category, :integer
  end
end
