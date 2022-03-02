class RemoveOptionFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :option, :string
  end
end
