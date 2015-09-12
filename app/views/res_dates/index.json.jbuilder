json.array!(@res_dates) do |res_date|
  json.extract! res_date, :id, :res_date
  json.url res_date_url(res_date, format: :json)
end
