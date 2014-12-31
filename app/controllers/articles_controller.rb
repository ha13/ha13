class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
    #render plain: params[:article].inspect
  end
  def show
    @article = Article.find(params[:id])
  end
  def index
    @article = Article.all

  end
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
  def edit
    @article = Article.find(params[:id])
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
    #render 'index'
  end
  def preview
    @article = Article.find(params[:article_id])
  end
  def new1
    @article = Article.new
  end
  private
  def article_params
    params.require(:article).permit(:title,:string)
  end
end
