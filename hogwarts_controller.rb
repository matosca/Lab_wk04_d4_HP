require('sinatra')
require('sinatra/reloader') if development?
require('pry-byebug')
require_relative('./models/student.rb')
also_reload('./models/*')

get '/students' do #index
  @students = Student.all()
  erb( :index )
end

get '/students/new' do #new
  erb(:new)
end

get '/students/:id' do #show
  @student = Student.find(params[:id])
  erb(:show)
end

post '/students' do #create
  @student = Student.new(params)
  @student.save
  erb(:create)
end

get '/students/:id/edit' do #edit
  @student = Student.find(params[:id])
  erb(:edit)
end

post '/students/:id' do #update
  @student = Student.new(params)
  @student.update
  erb(:update)
end

post '/students/:id/delete' do #delete
  @student = Student.find(params[:id])
  @student.delete
  redirect '/students'
end
