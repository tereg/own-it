get '/users/:id/subjects/:subject_id/articles' do 
  @user = User.find(params[:id])
  @subject = Subject.find(params[:subject_id])
  @articles = @subject.articles
  erb :'articles/index'
end