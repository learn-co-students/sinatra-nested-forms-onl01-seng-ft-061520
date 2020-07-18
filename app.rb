require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do

      p_data = {:name => params[:pirate][:name], :weight => params[:pirate][:weight], :height => params[:pirate][:height], :ships => params[:pirate][:ships]}

      s_data = []
      puts p_data
      p_data[:ships].each do |ship|
        s_data << Ship.new(ship)
      end

      p_data[:ships] = s_data
      @pirate = Pirate.new(p_data)

      erb :'/pirates/show'
    end

  end
end
