get '/sessions/:session_id/subjects' do 
  @session = User.find(params[:session_id])
  @subjects = @session.subjects
  erb :'subjects/index'
end

get '/sessions/:session_id/subjects/new' do 
  @session = User.find(params[:session_id])
  erb :'subjects/new'
end

post '/sessions/:session_id/subjects' do 
  @session = User.find(params[:session_id])
  @subject = @session.subjects.new(params[:subject])

  if @subject.save
    redirect "/sessions/#{@session.id}"
  else
    erb :'subjects/new' #show new subjects view again(potentially displaying errors)
  end
end
