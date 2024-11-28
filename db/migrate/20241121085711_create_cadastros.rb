class CreateCadastros < ActiveRecord::Migration[6.1]
  def change
    create_table :cadastros do |t|
      t.date :dataCadastro
      t.string :metodoCadastro

      t.timestamps
    end
  end
end
