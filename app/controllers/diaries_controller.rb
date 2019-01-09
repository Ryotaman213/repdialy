class DiariesController < ApplicationController

  def index
  end

  def new
    @diary = Diary.new
  end

  def create
      @diary = Diary.create(height: diary_params[:height], weight: diary_params[:weight], food: diary_params[:food], poop: diary_params[:poop], shed: diary_params[:shed], comment: diary_params[:comment])
      if @diary.save
      flash[:notice] = "Diary has Posted!"
      redirect_to root_path
    else
      flash[:notice] = "Miss"
    end
  end

    private
    def diary_params
      params.permit(:height, :weight, :food, :poop, :shed, :comment)
    end

end
