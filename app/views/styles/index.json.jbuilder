json.array!(@styles) do |style|
  json.extract! style, :id, :stylename, :string, :stylecode, :users, :image, :mate
  json.url style_url(style, format: :json)
end
