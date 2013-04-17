json.(@shows) do |json, show|
  json.partial! show
end