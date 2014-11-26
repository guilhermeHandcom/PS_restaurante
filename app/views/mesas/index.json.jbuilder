json.array!(@mesas) do |mesa|
  json.extract! mesa, :id, :numero, :capacidade
  json.url mesa_url(mesa, format: :json)
end
