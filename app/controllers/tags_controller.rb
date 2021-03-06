class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path, notice: "Tag créé"
    else
      render :new
    end
  end

  def show
    @tag = Tag.find(params[:id])
    @links = @tag.links
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      redirect_to tag_path(@tag), notice: "Tag modifié"
    else
      render :edit
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:name, :color)
  end
end
