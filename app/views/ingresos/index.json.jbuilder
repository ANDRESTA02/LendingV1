json.array!(@ingresos) do |ingreso|
  json.extract! ingreso, :id, :nombre, :documento, :ficha, :elemento_id, :prestamo
  json.url ingreso_url(ingreso, format: :json)
end
