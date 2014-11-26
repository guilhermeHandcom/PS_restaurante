json.array!(@comanda_produtos) do |comanda_produto|
  json.extract! comanda_produto, :id, :comanda_id, :produto_id, :quantidade
  json.url comanda_produto_url(comanda_produto, format: :json)
end
