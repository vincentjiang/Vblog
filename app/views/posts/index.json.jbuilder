json.array!(@posts) do |post|
  json.extract! post, :id, :title, :category, :content, :publish_at
  json.url post_url(post, format: :json)
end
