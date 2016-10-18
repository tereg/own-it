# get '/inspector' do 
#   session.inspect
# end

get '/users/:id/subjects' do 
  @session = User.find(params[:id])
  @subjects = @session.subjects
  erb :'subjects/index'
end

get '/users/:id/subjects/new' do 
  @session = User.find(params[:id])
  erb :'subjects/new'
end

post '/users/:id/subjects' do 
  @session = User.find(params[:id])
  @subject = @session.subjects.new(params[:subject])

  if @subject.save
    redirect "/users/#{@session.id}"
  else
    erb :'subjects/new' #show new subjects view again(potentially displaying errors)
  end
end

get '/users/:user_id/subjects/:id' do 
  @user = User.find(params[:user_id])
  @subject = @user.subjects.find(params[:id])
  erb :'subjects/show'
end