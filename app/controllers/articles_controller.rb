class ArticlesController < ApplicationController
    def index 
        @articles = Article.all 
        render :index 
    end

    def new
        @article = Article.new
        render :new
    end

    def create 
        # byebug
        @article = Article.new(article_params)
        if @article.valid?
            @article.save
            redirect_to article_path(@article)
        else
            render :new
        end
    end

    def show
        @article = Article.find(params[:id])
        render :show 
    end

    private
    def article_path
        params.require(:article).permit(:title, :description)
    end
end