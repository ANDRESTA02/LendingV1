json.array!(@cargos) do |cargo|
  json.extract! cargo, :id, :roll
  json.url cargo_url(cargo, format: :json)
end
