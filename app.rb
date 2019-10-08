require_relative 'config/environment'
require_relative 'models/puppy'
class App < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post '/puppy' do
    @newpuppy = Puppy.new(params[:name], params[:breed], params[:months_old])

    erb :display_puppy
  end

  # post "/puppy" do
  #   erb :display_puppy
  # end


end
