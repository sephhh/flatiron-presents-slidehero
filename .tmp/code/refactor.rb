# Inside the Event model
def self.find_similar_shows(genre_id)
  self.joins(:artists => :genres).where(genres: {id: genre_id})
end