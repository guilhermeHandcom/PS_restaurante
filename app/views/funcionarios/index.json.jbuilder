json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :nome, :cpf, :telefone, :data_nascimento, :cargo
  json.url funcionario_url(funcionario, format: :json)
end
