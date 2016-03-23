json.array!(@posts) do |post|
  # Почему бы во всех 3-х видах не использовать один partial?
  json.extract! post, :id, :title, :body, :published_at
  json.author_nickname post.author_nickname
end
