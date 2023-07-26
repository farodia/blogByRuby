class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(params.require(:article).permit(:title, :text))

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit

  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to new_article_path, status: :see_other
  end
end
