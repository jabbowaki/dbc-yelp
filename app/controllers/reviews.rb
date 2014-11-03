get '/reviews/new' do
  erb :'reviews/new'
end

post '/' do
  rating = params[:rating].to_i
  # raise rating.inspect.class
  restaurant_name = params[:restaurant]
  critique = params[:critique]
  restaurant = Restaurant.find_or_create_by(name: restaurant_name)
  user = User.find(session[:user_id])
  review = Review.create!(restaurant: restaurant, rating: rating, critique: critique, user: user)
  redirect '/'
end
