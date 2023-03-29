class ArticlesController < ApplicationController
  before_action :set_article, except: [:index, :create]

  def index
    @articles = Article.all
    render json: @articles
  end

  def show
    if @article
      render json: @article
    else
      message = "No se encontro el articulo"
      render json: { error: message }, status: :not_found
    end
  end

  def create
    @article = Article.create(article_params)
    render json: @article
  end

  def update
    if @article
      if @article.update!(article_params)
        render json: @article
      else
        message = "No se pudo actualizar el articulo"
        render json: { error: message }, status: :not_found
      end
    else
      message = "No se encontro el articulo"
      render json: { error: message }, status: :not_found
    end
  end

  def destroy
    if @article
      if @article.destroy
        render json: { message: "Se ha eliminado con exito" }
      else 
        message = "No se pudo eliminar el articulo"
        render json: { error: message }, status: :not_found
      end
    else
      message = "No se encontro el articulo"
      render json: { error: message }, status: :not_found
    end
  end

  private

  def article_params
    params.permit(:name, :description)
  end

  def set_article
    @article = Article.find_by_id params["id"]
  end
end
