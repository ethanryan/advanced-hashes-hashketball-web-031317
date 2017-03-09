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

def game_hash
  game_hash = {
   :home => {
     team_name: "Brooklyn Nets",
     colors: ["Black", "White"],
     :players => {
       "Alan Anderson" => {
         number: 0,
         shoe: 16,
         points: 22,
         rebounds: 12,
         assists: 12,
         steals: 3,
         blocks: 1,
         slam_dunks: 1
       },
       "Reggie Evans" => {
         number: 30,
         shoe: 14,
         points: 12,
         rebounds: 12,
         assists: 12,
         steals: 12,
         blocks: 12,
         slam_dunks: 7
       },
       "Brook Lopez" => {
         number: 11,
         shoe: 17,
         points: 17,
         rebounds: 19,
         assists: 10,
         steals: 3,
         blocks: 1,
         slam_dunks: 15
       },
       "Mason Plumlee" => {
         number: 1,
         shoe: 19,
         points: 26,
         rebounds: 12,
         assists: 6,
         steals: 3,
         blocks: 8,
         slam_dunks: 5
       },
       "Jason Terry" => {
         number: 31,
         shoe: 15,
         points: 19,
         rebounds: 2,
         assists: 2,
         steals: 4,
         blocks: 11,
         slam_dunks: 1
       },
  },
},
  :away => {
    team_name: "Charlotte Hornets",
    colors: ["Turquoise", "Purple"],
    :players => {
      "Jeff Adrien" => {
        number: 4,
        shoe: 18,
        points: 10,
        rebounds: 1,
        assists: 1,
        steals: 2,
        blocks: 7,
        slam_dunks: 2
      },
      "Bismak Biyombo" => {
        number: 0,
        shoe: 16,
        points: 12,
        rebounds: 4,
        assists: 7,
        steals: 7,
        blocks: 15,
        slam_dunks: 10
      },
      "DeSagna Diop" => {
        number: 2,
        shoe: 14,
        points: 24,
        rebounds: 12,
        assists: 12,
        steals: 4,
        blocks: 5,
        slam_dunks: 5
      },
      "Ben Gordon" => {
        number: 8,
        shoe: 15,
        points: 33,
        rebounds: 3,
        assists: 2,
        steals: 1,
        blocks: 1,
        slam_dunks: 0
      },
      "Brendan Haywood" => {
        number: 33,
        shoe: 15,
        points: 6,
        rebounds: 12,
        assists: 12,
        steals: 22,
        blocks: 5,
        slam_dunks: 12
      },
    },
  },
} #end bracket for entire hash
  game_hash #return game_hash
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


###example method:
def home_team_name
  game_hash[:home][:team_name]
end
puts home_team_name



def num_points_scored(player)

  home_team_players = game_hash[:home][:players] #this home team players (and their data)
  away_team_players = game_hash[:away][:players] #this home team players (and their data)

  home_team_player_points_array = [] #empty array
  away_team_player_points_array = [] #empty array

  if away_team_players.include?(player) #if player is on the away team...
    away_team_players.each do |key, value| #key is player name, value is player_data
      #binding.pry
      value.each do |key, value| #key is player, value is nested player_data
        #binding.pry
        value.each do |key, value|
          #binding.pry
          if key == :points #if the key is the player's points...
            away_team_player_points_array << value #push the player's points (the value of :points) into our array
          end #end if statement
        end #end value.each loop
      end #end value.each loop
    end #end away_team_players.each loop
    return away_team_player_points_array
  end #end if statement
end #end method



def team_colors(team_name)
  if team_name == game_hash[:home][:team_name] ## if team name is home team, AKA "Brooklyn Nets"
    home_team_colors = game_hash[:home][:colors]
    return home_team_colors
  elsif team_name == game_hash[:away][:team_name] ## else if team name is away team, AKA "Charlotte Hornets"
      away_team_colors = game_hash[:away][:colors]
      return away_team_colors
  end #end if statement
end #end method

def team_names
  new_array = [] #array to hold team names
  new_array << game_hash[:home][:team_name]
  new_array << game_hash[:away][:team_name]
  puts new_array #outputting so i can see
  return new_array
end

def player_numbers(team_name)
  if team_name == game_hash[:home][:team_name] ## if team name is home team, AKA "Brooklyn Nets"
    home_team_player_numbers_array = [] #new array
    home_team_player_numbers = game_hash[:home][:players]
    home_team_player_numbers.each do |key, value| #key is player name
      value.each do |key, value| #key is player_data
        #binding.pry
        if key == :number #if the key is the player's number...
          home_team_player_numbers_array << value #push the player's number (the value of :number) into our array
        end #end if statement
      end #end loop
    end #end loop
    return home_team_player_numbers_array
  elsif team_name == game_hash[:away][:team_name] ## else if team name is away team, AKA "Charlotte Hornets"
    away_team_player_numbers_array = [] #new array
    away_team_player_numbers = game_hash[:away][:players]
    away_team_player_numbers.each do |key, value| #key is player name
      value.each do |key, value| #key is number
        #binding.pry
        if key == :number #if the key is the player's number...
          away_team_player_numbers_array << value #push the player's number (the value of :number) into our array
        end #end if statement
      end #end loop
    end #end loop
    return away_team_player_numbers_array
  end #end if statement
end #end method

def player_stats(player)
end #end method

def big_shoe_rebounds(player)
end #end method
