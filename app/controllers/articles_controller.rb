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
            flash[:notice] = "Article was successfully created."
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

    def edit
        @article = Article.find(params[:id])
        render :edit
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Article was successfully edited."
            redirect_to article_path(@article)
        else
            render :edit 
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy 
        flash[:notice] = "Article was successfully deleted"
        redirect_to articles_path
    end

    private
    def article_params
        params.require(:article).permit(:title, :description)
    end
end