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
    image "cat_coding.gif"
    #hackery gif here

  end

  slide "Technologies Used" do
    list do
      point "Rails"
      point "Bootstrap"
      #plus three api's
      point "Seatgeek API" #for concert data
      point "Google Maps API" #for concert data
      point "YouTube API" # to find a video
    end
  end

  slide "Challenge 1: Find Similar Genre" do
    point "Take a genre (or several)"
    point "Select shows with any artists whose genres overlap"
    image "genre_button.png"

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
    code(:ruby) do
      "refactor.rb"
    end
    point "Let SQL do the heavy lifting"
    point "Much faster!"
  end


  slide "Challenge 2: Loading a Map" do
    point "First pass:"
    code(:javascript) do
      "map_first.js"  
    end
  end

  slide "The bug" do
    point "Only showed map after refresh"
    point "Why won't this run when the page loads!?"
    code(:javascript) do
      "map_first_detail.js"
    end
  end
  
  slide "The hitch: Turbolinks" do
    point "Turbolinks loads the page without really 'loading' the 'page'"
    point "Uses AJAX to swap in a new body"
  end

  slide "The fix:" do
    code(:javascript) do
      "map_fix_detail.js"
    end
    point "Have to hook into 'page:load' event"
    # a turbolinks event, along with more standard window load event
  end

  slide "Wishlist" do
    point "Spruce up the data"
    list do 
      point "Fill in sparse categories like prices"
      # also more genres, more venues"
      point "Add more categories like artist reviews and websites"
      # age restrictions, ticket links
    end
  end

  slide "Wishlist" do
    point "Do more with APIs"
    list do 
      point "More map functionality"
      #directions, label
      point "Smarter youtube querying"
      #if first result is an error, retry. weed out irrelevant results.
    end
  end

  slide "Questions?" do
  end

end
