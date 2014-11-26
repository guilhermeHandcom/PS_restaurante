json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :valor, :categoria_id
  json.url produto_url(produto, format: :json)
end
