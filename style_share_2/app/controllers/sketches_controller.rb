class SketchesController < ApplicationController
  before_action :set_sketch, only: [:show, :edit, :update, :destroy]

  def index
    @sketches = Sketch.all
  end

  def show
  end

  def create
    @sketch = Sketch.new(sketch_params)
    @sketch.code = @sketch.code.strip
    if @sketch.save
      redirect_to @sketch
    else
      render :new
    end
  end

  def new
    @sketch = Sketch.new
  end

  def edit
  end

  def update
    if @sketch.update(sketch_params)
      redirect_to @sketch
    else
      render :edit
    end
  end

  def destroy
    @sketch.destroy
    redirect_to sketches_url
  end

  private

    def set_sketch
      @sketch = Sketch.find(params[:id])
    end

    def sketch_params
      params.require(:sketch).permit(:title, :description, :code)
    end

end
