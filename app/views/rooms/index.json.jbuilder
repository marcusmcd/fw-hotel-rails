json.array!(@rooms) do |room|
  json.extract! room, :id, :room_number, :reserved
  json.url room_url(room, format: :json)
end
