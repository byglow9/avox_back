class AddEmailAndPasswordToUsuarios < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :email, :string
    add_column :usuarios, :password, :string
  end
end
