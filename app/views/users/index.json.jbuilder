json.array!(@users) do |user|
  json.extract! user, :id,:nombre, :apellido, :telefono, :celular, :dir :email, :crypted_password, :salt
  json.url user_url(user, format: :json)
end
