
get '/' do
  @reviews = Review.all
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  erb :index
end

get '/login' do
  erb :'users/login'
end

post '/login' do
  user = User.authenticate(params[:user])
  if user
    session[:user_id] = user.id
  end
  redirect "/"
end

post '/logout' do
  session.clear
  redirect '/'
end

get '/signup' do
  erb :'users/new'
end

post '/signup' do
  user = User.create!(params[:user])
  session[:user_id] = user.id
  redirect '/'
end

# get '/' do
#   @user = User.find(session[:user_id])
#   erb :index
# end
