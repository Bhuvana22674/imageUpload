class ImagesController < ApplicationController

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to :action => :show, :id => @image.id
    end
  end

  def index
    @images = Image.all
   
  end

  def new
  end

  def show
    @id = params[:id]
    @image = Image.find(@id)
  end

  private
  def image_params
    params.require(:image).permit(:image)
  end
end
