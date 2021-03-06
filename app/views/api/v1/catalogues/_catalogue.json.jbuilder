json.extract! catalogue#, :id, :show_id, :genre, :title, :director, :cast, :country, :date_added, :release_year, :rating, :duration, :listed_in, :description, :created_at, :updated_at
#json.url catalogue_url(catalogue, format: :json)

json.id catalogue.show_id
json.title catalogue.title
json.genre catalogue.genre
json.year catalogue.release_year
json.country catalogue.country
json.published_at catalogue.date_added.to_date
json.description catalogue.description
