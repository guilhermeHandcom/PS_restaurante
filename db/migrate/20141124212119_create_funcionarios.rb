class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.datetime :data_nascimento
      t.string :cargo

      t.timestamps
    end
  end
end
