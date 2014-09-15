json.array!(@stores) do |store|
  json.extract! store, :id, :name, :address, :tel, :email, :closed, :group_id
  json.url store_url(store, format: :json)
end
