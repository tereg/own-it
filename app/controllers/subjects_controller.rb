# get '/inspector' do 
#   session.inspect
# end

get '/sessions/:id/subjects' do 
  @session = User.find(params[:id])
  @subjects = @session.subjects
  erb :'subjects/index'
end

get '/sessions/:id/subjects/new' do 
  @session = User.find(params[:id])
  erb :'subjects/new'
end

post '/sessions/:id/subjects' do 
  @session = User.find(params[:id])
  @subject = @session.subjects.new(params[:subject])

  if @subject.save
    redirect "/users/#{@session.id}"
  else
    erb :'subjects/new' #show new subjects view again(potentially displaying errors)
  end
end
