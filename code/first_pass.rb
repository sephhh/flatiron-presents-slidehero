
# Inside the Event model
def self.find_similar_shows(genre_ids)
  self.select do |event|
    event.artists.any? do |artist|
      genre_ids & artist.genres.pluck(:id) != []
    end
  end
end