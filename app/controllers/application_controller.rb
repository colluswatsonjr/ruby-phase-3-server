class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    [Character.all, Nation.all , Role.all].to_json
  end

  # Character --------

  get "/characters" do
    Character.all.to_json
  end

  get "/characters/:id" do
    character = Character.find(params[:id])
    character.to_json
  end

  get "/:search" do
    character = Character.where('character_name like ?', params[:search])
    character.to_json
  end

  post "/characters" do
    character = Character.create(character_name: params[:character_name], nation_id: params[:nation_id], role_id: params[:role_id])
    character.to_json
  end

  patch "/characters/:id" do
    character = Character.find(params[:id])
    character.update(character_name: params[:character_name], nation_id: params[:nation_id], role_id: params[:role_id])
    character.to_json
  end

  delete "/characters/:id" do
    character = Character.find(params[:id])
    character.destroy
    character.to_json
  end

  # Nation --------
  get "/nations" do
    Nation.all.to_json
  end
  post "/nations" do
    nation = Nation.create(nation_name: params[:nation_name], nation_location: params[:nation_location])
    nation.to_json
  end
  delete "/nations/:id" do
    nation = Nation.find(params[:id])
    nation.destroy
    nation.to_json
  end

  # Role --------
  get "/roles" do
    Role.all.to_json
  end
  post "/roles" do
    role = Role.create(role_title: params[:role_title], role_rating: params[:role_rating], role_description: params[:role_description])
    role.to_json
  end

end
