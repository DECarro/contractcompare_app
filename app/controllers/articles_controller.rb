class ArticlesController < ApplicationController

	def index
		@articles = Article.all 
		
	end

	def show
		@article = Article.find(params[:id])
		@comment = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
    @article = Article.new(params[:article].permit(:title, :content, :excerpt, :category_ids => []))

      if @article.save
        flash[:notice] = 'Article Created'
        redirect_to @article
        
      else
      flash[:alert] = @article.errors.full_messages.join(", ")
       render 'new'
      
      end

    end
  

	def edit
		@article = Article.find(params[:id])
	end
	
end
