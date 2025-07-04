class TeachersController < ApplicationController
  
  def index
    @teachers=Teacher.all
  end

  def new
    @teacher=Teacher.new
  end

  def show
    @teacher=Teacher.find(params[:id])
  end

  def view
    @teacher=Teacher.find(params[:id])
  end


  def create
    @teacher=Teacher.new(teacher_params)
    if @teacher.save
      redirect_to @teacher
    else
      render :new
    end
  end


  def edit
    @teacher=Teacher.find(params[:id])
  end

  def update
    @teacher=Teacher.find(params[:id])
    if @teacher.update(teacher_params)
      redirect_to @teacher
    else
      render :edit
    end
  end

    private

    def teacher_params
      params.require(:teacher).permit(:name, :subj_speclization, :mobile)
    end
end
