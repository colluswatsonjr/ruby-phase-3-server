class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  # Character --------
  get "/characters" do
    Character.all.to_json
  end
  # Nation --------
  get "/nations" do
    Nation.all.to_json
  end
  # Role --------
  get "/roles" do
    Role.all.to_json
  end

end
