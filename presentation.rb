# require 'slide_hero'

# presentation 'concert_curator_presentation' do
#   slide "Presentations made easy!" do
#     point "Make presentations at the speed of thought"
#     point "Make ideas pop", animation: "grow"
#     list do
#       point "All kinds of awesome here"
#     end
#   end
# end


require 'slide_hero'

presentation 'concert_curator_presentation' do
  set_theme 'simple'

  slide "ConcertCurator" do
    point "Seph Kramer and Tim Murray"
  end

  slide "Problem" do
    point "When it comes to concerts/events in NYC", animation: "step"
    point "INFORMATION OVERLOAD", animation: "grow", animation: "step" 
  end

  slide "ConcertCurator" do
    point "A fun and helpful app that serves-up the musical means to plan the perfect night", animation: "step"
  end

  slide "Demo" do
    point "Let's try it out!"
  end

#Home page--get a single show, see a list of shows based on genre, date, cost
# Venue page--shows map
# Artist page--shows a youtube video
# Event details page--shows everything

#Hand off to Seph

  slide "About the code" do

    #hackery gif here

  end

  slide "Technologies Used" do
    point "Rails"
    point "Bootstrap"
    point "Three APIs:"
    list do
      point "Seatgeek API for concert data"
      point "Google Maps API for maps"
      point "YouTube API to find a video"
    end
  end

  slide "Code Challenge 1: Find Similar Genre" do
    point "Find a show with a genre that matches a genre in the current show"
    #image of this button from the front page
  end

  slide "First pass:" do
    code(:ruby) do
      "first_pass.rb"
    end
    point "Logically sound, but so slow"
  end

  #the & means intersection, so means that there is some overlap between these arrays


  slide "Refactor:" do
    point "Much faster!"
    code(:ruby) do
      "refactor.rb"
    end
    point "Use 'join' and 'where' to let SQL do the heavy lifting"
  end


  slide "Code Challenge 2: Loading a map" do
    point "First pass:"
    # code(:ruby) do
    #   "map_first.rb"  
    # end
  end

  slide "The bug" do
    point "Would only show map after refresh"
    point "But this code is supposed to be called automatically when the page loads!"
    # code(:ruby) do
    #   "map_first_detail.rb"
    # end
  end
  
  slide "The hitch: Turbolinks" do
    point "Would only show map after refresh"
    point "But this code is supposed to be called automatically when the page loads!"
    # code(:ruby) do
    #   "map_first_detail.rb"
    # end
  end

  # slide "Next Steps" do
  # end

end
