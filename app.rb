require "sinatra"
  require "sinatra/reloader"
  require "sinatra/activerecord"
  set :database, { adapter: "sqlite3", database: "mydb.db" }
   require './models/user'
   require './models/team'
   
 
get '/' do
  @users= User.all
  erb :userlist
end


post '/userinfo' do
  user_id =  params["users"]["u_ids"]
  @user = User.find(user_id)
  p @user
  @users= User.all
    erb :userinfo
end

get '/teamlist' do
  @teams= Team.all
  erb :teamlist
end


post '/teaminfo' do
  teamfinal =  params["teams"]["team_id"]
  @teaml = Team.find(teamfinal)
  p @teaml
  @users_t = @teaml.users
  erb :teaminfo
end
  
 






  
  