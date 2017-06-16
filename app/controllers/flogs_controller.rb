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

  private
    def flog_params
      params.require(:flog).permit(:date, :location, :who, :description)
    end
end
