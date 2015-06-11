json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :room_id, :reservation_date
  json.url reservation_url(reservation, format: :json)
end
