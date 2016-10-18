get '/subjects/:subject_id/videos' do 
  @subject = Subject.find(params[:subject_id])
  @videos = @subject.videos
  erb :'videos/index'
end

get '/subjects/:subject_id/videos/new' do 
  @subject = Subject.find(params[:subject_id])
  erb :'videos/new'
end

post '/subjects/:subject_id/videos' do 
  @subject = Subject.find(params[:subject_id])
  @video = @subject.videos.new(params[:video])

  if @video.save
    redirect "/subjects/#{@subject.id}/videos"
  else
    erb :'videos/new' #show new videos view again(potentially displaying errors)
  end
end

get '/subjects/:subject_id/videos/:id' do 
  @subject = Subject.find(params[:subject_id])
  @video = @subject.videos.find(params[:id])
  erb :'videos/show'
end


delete '/subjects/:subject_id/videos/:id' do 
  @subject = Subject.find(params[:subject_id])
  @video = @subject.videos.find(params[:id])
  @video.destroy
  redirect "/subjects/#{@subject.id}/videos"
end