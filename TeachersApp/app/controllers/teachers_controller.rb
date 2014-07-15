class TeachersController < ApplicationController

  def index
  	@teachers = Teacher.all
  end

  def new
  	@teacher = Teacher.new
  end

  def create
  	@teacher = Teacher.new teacher_params
    if @teacher.save
      flash[:notice] = 'Your awesome teacher was created!'
      redirect_to root_path
    else
      flash[:error] = 'Mmm... looks like something went wrong!'
      redirect_to :back
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update_attributes(teacher_params)
      flash[:notice] = 'Your teacher was updated!'
      redirect_to root_path
    else
      flash[:error] = 'Mmm... looks like something went wrong!'
      redirect_to :back
    end 
  end

  def destroy
    if Teacher.destroy(params[:id])
      flash[:notice] = 'The teacher was destroyed!'
      redirect_to root_path
    else
      flash[:error] = 'Mmm... looks like something went wrong!'
      redirect_to back
    end
  end

  def teacher_params
  	params.require(:teacher).permit(:name, :code)
  end
end
