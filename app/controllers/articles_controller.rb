class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
     @articles = Article.all

  end

  def show
    id = params[:id]
    @article = Article.find(id)
  end

  def new
    @article = current_user.articles.build
  end

  def create
    @article = current_user.articles.build(article_params)
    @article.save
    redirect_to articles_path


  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to article_path(@article.id)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  def article_params
    params.require(:article).permit(:title, :stars, :content, :user_id)
  end
   def set_article
      @article = Article.find(params[:id])
    end


end
