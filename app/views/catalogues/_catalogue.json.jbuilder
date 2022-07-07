json.extract! catalogue, :id, :show_id, :genre, :title, :director, :cast, :country, :date_added, :release_year, :rating, :duration, :listed_in, :description, :created_at, :updated_at
json.url catalogue_url(catalogue, format: :json)
