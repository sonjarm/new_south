json.array!(@new_souths) do |new_south|
  json.extract! new_south, :id, :title, :notes, :due, :done
  json.url new_south_url(new_south, format: :json)
end
