class TeachersController < ApplicationController
  def index
  	@teachers = Teacher.all
  end

  def edit
  end
end
