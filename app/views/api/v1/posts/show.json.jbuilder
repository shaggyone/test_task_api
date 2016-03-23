json.extract! @post, :id, :title, :body
json.published_at @post.published_at.strftime("%d %B, %H:%M:%S ") # Этого делать не нужно.
                                                                  # Дата сериализуется в универсальный
                                                                  # формат понятный клиентом.
json.author_nickname @post.author_nickname
json.author @post.author
