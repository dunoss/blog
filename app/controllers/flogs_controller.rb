class FlogsController < ApplicationController
  def index
    @flogs = Flog.all.order('created_at DESC')
  end

  def new
  end

  def create
    @flog = Flog.new(flog_params)
    @flog.save

    redirect_to @flog
  end

  def show
    @flog = Flog.find(params[:id])
  end

  def edit
    @flog = Flog.find(params[:id])
  end

  def update
    @flog = Flog.find(params[:id])

    if @flog.update(params[:flog].permit(:who, :date, :location, :description))
      redirect_to @flog
    else render 'edit'
    end
  end

  def destroy
    @flog = Flog.find(params[:id])
    @flog.destroy

    redirect_to flogs_path
  end

  private
    def flog_params
      params.require(:flog).permit(:date, :location, :who, :description)
    end
end
