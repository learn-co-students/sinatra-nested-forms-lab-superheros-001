require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      team_name= params["team"]["name"]
      team_motto = params["team"]["motto"]
      members = params["members"]
      @team = Team.new(team_name, team_motto, members)
      erb :team
    end


end
