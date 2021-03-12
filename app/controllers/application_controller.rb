class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception 

  gets '/students' do 
    @students = Student.all 
    erb :'index.html'
  end 
end
