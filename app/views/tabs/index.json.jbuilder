json.array!(@tabs) do |tab|
  json.extract! tab, :id, :artist, :title, :tab_content
  json.url tab_url(tab, format: :json)
end
