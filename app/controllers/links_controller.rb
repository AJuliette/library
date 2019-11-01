class LinksController < ApplicationController
  def index
    @links = Link.all
    @links.includes(:tags)
  end

  def new
    @link = Link.new
  end
  
  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to root_path, notice: "Lien créé"
    else
      render :new
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      redirect_to root_path, notice: "Lien modifié"
    else
      render :edit
    end
  end

  private

  def link_params
    params.require(:link).permit(
      :url, :tag_id, :title, :color,
      taggings_attributes: [:id, :_destroy, :tag_id, tag_attributes: %i[id _destroy name color]]
    )
  end
end

