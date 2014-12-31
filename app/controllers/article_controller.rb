class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
    #render plain: params[:article].inspect
  end
  def show
    @article = Article.find(params[:id])
  end
  def index
    @article1 = Article.all

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
    redirect_to article_index_path
  end
  private
  def article_params
    params.require(:article).permit(:title,:string)
  end
end
