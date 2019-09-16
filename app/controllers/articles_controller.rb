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
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was successfully created"
            redirect_to article_path(@article)
        else
            # flash[:notice] = @article.errors.full_messages.to_sentence
            render :new
        end
    end

    def show
        @article = Article.find(params[:id])
        render :show 
    end

    private
    def article_params
        params.require(:article).permit(:title, :description)
    end
end