json.array!(@sports) do |sport|
  json.extract! sport, :id, :name, :uid, :description
  json.url sport_url(sport, format: :json)
end
