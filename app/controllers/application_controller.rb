require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(name:params[:team][:name],motto:params[:team][:motto])
      members = params[:team][:members]
      members.each do |x|
        Member.new({name:x[:name], power:x[:power], bio:x[:bio]})
      end

      @members = Member.all
      erb :team
    end

end
