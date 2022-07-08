class Catalogue < ApplicationRecord
  include Filterable

  validates :show_id, uniqueness: true
  #validates :title, uniqueness: true

  #escopos para buscas
  scope :filter_by_show_id, -> (show_id) { where("show_id LIKE ?", "%#{show_id}%")}
  scope :filter_by_genre, -> (genre) { where("genre LIKE ?", "%#{genre}%")}
  scope :filter_by_title, -> (title) { where("title LIKE ?", "%#{title}%")}
  scope :filter_by_country, -> (country) { where("country LIKE ?", "%#{country}%")}
  scope :filter_by_date_added, -> (date_added) { where("date_added LIKE ?", "%#{date_added}%")}
  scope :filter_by_release_year, -> (release_year) { where("release_year LIKE ?", "%#{release_year}%")}
  scope :filter_by_description, -> (description) { where("description LIKE ?", "%#{description}%")}
end
