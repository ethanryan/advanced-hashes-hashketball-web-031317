require "pry"

# Write your code here!

# contacts = {
#   "Jon Snow" => {
#     name: "Jon",
#     email: "jon_snow@thewall.we",
#     favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
#     knows: nil
#   },
#   "Freddy Mercury" => {
#     name: "Freddy",
#     email: "freddy@mercury.com",
#     favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
#   }
# }

def game_hash #rewriting this method same as Ian wrote it, the way i did it originally is commented-out below
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end #end method



# def good_practices
#   game_hash.each do |location, team_data|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     #binding.pry
#       team_data.each do |attribute, data|
#         #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
#         #binding.pry
#
#         #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
#         data.each do |data_item|
#             #binding.pry
#       end
#     end
#   end
# end
# #good_practices #call this method to practice using pry in the Learn IDE


def num_points_scored(name)
  # given an array of player data (hashes), find the one whose name matches
  # What is a player?

  ## iterate over the list of players
  ## Find the one whose `player_name` matches the name that we're looking for

  #binding.pry
  player = find_player(name)
  # find the number of points scored for that player
  #puts player[:points]
  player[:points]
end

def shoe_size(name)
  # I have a big data structure with info about teams and players
  # I want to return the number of points scored for a given player by name

  # given an array of player data (hashes), find the one whose name matches
  # What is a player?

  ## iterate over the list of players
  ## Find the one whose `player_name` matches the name that we're looking for

  player = find_player(name)
  # find the number of points scored for that player
  player[:shoe]
end

def team_colors(team)
  if team == "Brooklyn Nets"
    home_team_colors = game_hash[:home][:colors]
  elsif team == "Charlotte Hornets"
    away_team_colors = game_hash[:away][:colors]
  end #end if else
end

def team_names
  home_team_name = game_hash[:home][:team_name]
  away_team_name = game_hash[:away][:team_name]
  team_names = home_team_name, away_team_name #this creates an array, team_names, that contains and returns two string elements within, seperated by a comma
  #binding.pry
end

def player_numbers(team)
  if team == "Brooklyn Nets"
    home_team_players.map do |element| #map/collect returns the new array created below
      element[:number]
    end #end loop
  elsif team == "Charlotte Hornets"
    away_team_players.map do |element| #map/collect returns the new array created below
      element[:number]
    end #end loop
  end #end if else
end #end method

def player_stats(name)
  players.find do |player_data| #find returns the first element for which block is true
    if name == player_data[:player_name] #if name in the parameter matches player_data[:player_name]...
      player_data.delete(:player_name) #delete the :player_name key/value pair
      player_data #and return the player_data, minus the player_name
    end #end if statement
  end #end loop
end #end method

# def largest_hash_key(hash)
#   hash.max_by{|k,v| v}
# end

# def big_shoe_rebounds
#   #shoe_size(name)
#   players.map do |player_data|
#     binding.pry
#     player_data[:shoe]
#     #shoe #returns maximum player shoe size
#   end #end loop
# end #end method

def big_shoe_rebounds

  all_shoe_sizes = [] #empty hash, to hold all shoe sizes

  players.each do |player| #loop through all the players...
    #binding.pry
    shoe_size = player[:shoe] #this variable holds the shoe size
    all_shoe_sizes << shoe_size #push all shoe_sizes to the all_shoe_sizes array
  end #end each loop

  #First, find the player with the largest shoe size:

  biggest_shoe = all_shoe_sizes.max

  #Then, return that player's number of rebounds:

  players.each do |player| #loop through all the players...
    #binding.pry
    shoe_size = player[:shoe]
    rebounds = player[:rebounds]

    if shoe_size == biggest_shoe #if the shoe fits...
      return rebounds #return that player's rebounds
    end #end if statement
  end #end each loop
end #end method


####helper methods::::
####helper methods::::

def home_team_players
  home_team_players = game_hash[:home][:players]
end

def away_team_players
  away_team_players = game_hash[:away][:players]
end

def players ###this works <<<<
  #  go through all of the players...
  home_team_players + away_team_players    #### return all players
  #binding.pry
end


def find_player(name) #first name is "Jeff Adrien" when checking with pry
  players.find do |player_data| #find returns the first element for which block is true
    #binding.pry
    player_data[:player_name] == name #this is saying, if name == player_data[:player_name], return that player's name
  end
end


################################

####methods below pass the tests, but methods above were discussed in class as better way
####to solve these problems, by creating helper methods and not using 'sandwich' style methods
####sandwich meaning empty array on top, code pushing answers to empty array, then last line returning array
####instead, have the last line of code return what's needed, instead of always using .each loops and pushing results to empty arrays

# contacts = {
#   "Jon Snow" => {
#     name: "Jon",
#     email: "jon_snow@thewall.we",
#     favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
#     knows: nil
#   },
#   "Freddy Mercury" => {
#     name: "Freddy",
#     email: "freddy@mercury.com",
#     favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
#   }
# }


# def game_hash
#   game_hash = {
#    :home => {
#      team_name: "Brooklyn Nets",
#      colors: ["Black", "White"],
#      :players => {
#        "Alan Anderson" => {
#          number: 0,
#          shoe: 16,
#          points: 22,
#          rebounds: 12,
#          assists: 12,
#          steals: 3,
#          blocks: 1,
#          slam_dunks: 1
#        },
#        "Reggie Evans" => {
#          number: 30,
#          shoe: 14,
#          points: 12,
#          rebounds: 12,
#          assists: 12,
#          steals: 12,
#          blocks: 12,
#          slam_dunks: 7
#        },
#        "Brook Lopez" => {
#          number: 11,
#          shoe: 17,
#          points: 17,
#          rebounds: 19,
#          assists: 10,
#          steals: 3,
#          blocks: 1,
#          slam_dunks: 15
#        },
#        "Mason Plumlee" => {
#          number: 1,
#          shoe: 19,
#          points: 26,
#          rebounds: 12,
#          assists: 6,
#          steals: 3,
#          blocks: 8,
#          slam_dunks: 5
#        },
#        "Jason Terry" => {
#          number: 31,
#          shoe: 15,
#          points: 19,
#          rebounds: 2,
#          assists: 2,
#          steals: 4,
#          blocks: 11,
#          slam_dunks: 1
#        },
#   },
# },
#   :away => {
#     team_name: "Charlotte Hornets",
#     colors: ["Turquoise", "Purple"],
#     :players => {
#       "Jeff Adrien" => {
#         number: 4,
#         shoe: 18,
#         points: 10,
#         rebounds: 1,
#         assists: 1,
#         steals: 2,
#         blocks: 7,
#         slam_dunks: 2
#       },
#       "Bismak Biyombo" => {
#         number: 0,
#         shoe: 16,
#         points: 12,
#         rebounds: 4,
#         assists: 7,
#         steals: 7,
#         blocks: 15,
#         slam_dunks: 10
#       },
#       "DeSagna Diop" => {
#         number: 2,
#         shoe: 14,
#         points: 24,
#         rebounds: 12,
#         assists: 12,
#         steals: 4,
#         blocks: 5,
#         slam_dunks: 5
#       },
#       "Ben Gordon" => {
#         number: 8,
#         shoe: 15,
#         points: 33,
#         rebounds: 3,
#         assists: 2,
#         steals: 1,
#         blocks: 1,
#         slam_dunks: 0
#       },
#       "Brendan Haywood" => {
#         number: 33,
#         shoe: 15,
#         points: 6,
#         rebounds: 12,
#         assists: 12,
#         steals: 22,
#         blocks: 5,
#         slam_dunks: 12
#       },
#     },
#   },
# } #end bracket for entire hash
#   game_hash #return game_hash
# end #end method


# def num_points_scored(player)
#
#   home_team_players = game_hash[:home][:players] #this home team players (and their data)
#   away_team_players = game_hash[:away][:players] #this away team players (and their data)
#
#   # home_team_player_points_array = [] #empty array
#   # away_team_player_points_array = [] #empty array
#
#   if home_team_players.include?(player) #if player is on the away team...
#     home_team_players.each do |key, value| #key is player name, value is player_data
#       #binding.pry
#       #value.include?(:points)
#       if key == player #if the player passed into the method equals the key in this loop...
#         return value.values[2] #return that player's points, AKA value.values[2]
#       end #end if statement
#     end #end away_team_players.each loop
#
#   elsif away_team_players.include?(player) #if player is on the away team...
#     away_team_players.each do |key, value| #key is player name, value is player_data
#       #binding.pry
#       #value.include?(:points)
#       if key == player #if the player passed into the method equals the key in this loop...
#         return value.values[2] #return that player's points, AKA value.values[2]
#       end #end if statement
#     end #end away_team_players.each loop
#   end #end if..elsif statement
# end #end method
#
#
# def shoe_size(player)
#
#   home_team_players = game_hash[:home][:players] #this home team players (and their data)
#   away_team_players = game_hash[:away][:players] #this away team players (and their data)
#
#   if home_team_players.include?(player) #if player is on the away team...
#     home_team_players.each do |key, value| #key is player name, value is player_data
#       if key == player #if the player passed into the method equals the key in this loop...
#         return value.values[1] #return that player's shoe size, AKA value.values[1]
#       end #end if statement
#     end #end away_team_players.each loop
#
#   elsif away_team_players.include?(player) #if player is on the away team...
#     away_team_players.each do |key, value| #key is player name, value is player_data
#       if key == player #if the player passed into the method equals the key in this loop...
#         return value.values[1] #return that player's shoe size, AKA value.values[1]
#       end #end if statement
#     end #end away_team_players.each loop
#   end #end if..elsif statement
# end #end method
#
#
#
#
# def team_colors(team_name)
#   if team_name == game_hash[:home][:team_name] ## if team name is home team, AKA "Brooklyn Nets"
#     home_team_colors = game_hash[:home][:colors]
#     return home_team_colors
#   elsif team_name == game_hash[:away][:team_name] ## else if team name is away team, AKA "Charlotte Hornets"
#       away_team_colors = game_hash[:away][:colors]
#       return away_team_colors
#   end #end if statement
# end #end method
#
#
# def team_names
#   new_array = [] #array to hold team names
#   new_array << game_hash[:home][:team_name]
#   new_array << game_hash[:away][:team_name]
#   puts new_array #outputting so i can see
#   return new_array
# end
#
#
# def player_numbers(team_name)
#   home_team_player_numbers_array = [] #new array
#   away_team_player_numbers_array = [] #new array
#
#   if team_name == game_hash[:home][:team_name] ## if team name is home team, AKA "Brooklyn Nets"
#     home_team_player_numbers = game_hash[:home][:players]
#     home_team_player_numbers.each do |key, value| #key is player name
#       value.each do |key, value| #key is player_data
#         #binding.pry
#         if key == :number #if the key is the player's number...
#           home_team_player_numbers_array << value #push the player's number (the value of :number) into our array
#         end #end if statement
#       end #end loop
#     end #end loop
#     return home_team_player_numbers_array
#   elsif team_name == game_hash[:away][:team_name] ## else if team name is away team, AKA "Charlotte Hornets"
#     away_team_player_numbers = game_hash[:away][:players]
#     away_team_player_numbers.each do |key, value| #key is player name
#       value.each do |key, value| #key is number
#         #binding.pry
#         if key == :number #if the key is the player's number...
#           away_team_player_numbers_array << value #push the player's number (the value of :number) into our array
#         end #end if statement
#       end #end loop
#     end #end loop
#     return away_team_player_numbers_array
#   end #end if statement
# end #end method
#
#
# def player_stats(player)
#   home_team_players = game_hash[:home][:players] #this home team players (and their data)
#   away_team_players = game_hash[:away][:players] #this away team players (and their data)
#
#   if home_team_players.include?(player) #if player is on the away team...
#     home_team_players.each do |key, value| #key is player name, value is player_data
#       if key == player #if the player passed into the method equals the key in this loop...
#         return value #return that player's stats, AKA value / player_data
#       end #end if statement
#     end #end away_team_players.each loop
#
#   elsif away_team_players.include?(player) #if player is on the away team...
#     away_team_players.each do |key, value| #key is player name, value is player_data
#       if key == player #if the player passed into the method equals the key in this loop...
#         return value #return that player's stats, AKA value / player_data
#       end #end if statement
#     end #end away_team_players.each loop
#   end #end if..elsif statement
# end #end method
#
#
# def big_shoe_rebounds
#
#   home_team_players = game_hash[:home][:players] #this home team players (and their data)
#   away_team_players = game_hash[:away][:players] #this away team players (and their data)
#
#   all_players = home_team_players.merge(away_team_players) #merge hashes above into all_players
#
#   all_shoe_sizes = [] #empty hash, to hold all shoe sizes
#
#   all_players.each do |key, value| #loop through all the players...
#     #binding.pry
#     shoe_size = value.values[1] #this variable holds the shoe size
#     all_shoe_sizes << shoe_size #push all shoe_sizes to the all_shoe_sizes array
#   end #end each loop
#
#   #First, find the player with the largest shoe size:
#
#   biggest_shoe = all_shoe_sizes.max
#
#   #Then, return that player's number of rebounds:
#
#   all_players.each do |key, value| #loop through all the players...
#     #binding.pry
#     shoe_size = value.values[1]
#     rebounds = value.values[3]
#
#     if shoe_size == biggest_shoe #if the shoe fits...
#       return rebounds #return that player's rebounds
#     end #end if statement
#   end #end each loop
# end #end method
