json.extract! blog, :id, :title, :body, :image, :subject, :created_at, :updated_at
json.url blog_url(blog, format: :json)
