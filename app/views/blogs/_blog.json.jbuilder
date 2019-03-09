json.extract! blog, :id, :title, :subtitle, :body, :main_image, :thumb_image, :created_at, :updated_at
json.url blog_url(blog, format: :json)
