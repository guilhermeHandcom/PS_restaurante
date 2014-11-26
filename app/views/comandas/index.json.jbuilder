json.array!(@comandas) do |comanda|
  json.extract! comanda, :id, :numero, :mesa_id, :valor_total, :funcionario_id, :aberto
  json.url comanda_url(comanda, format: :json)
end
