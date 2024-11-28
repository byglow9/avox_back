class AddNameToUsuarios < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :name, :string
  end
end
