json.extract! auditorium, :id, :title, :capacity, :created_at, :updated_at
json.url auditorium_url(auditorium, format: :json)
