module Api
    module V1
        class ArticlesController < ApplicationController
            skip_before_action :verify_authenticity_token
        
            def index
                @articles = Article.all
                render json: @articles
            end

            def create
                @article = Article.new(article_params)

                if @article.save
                    render json: @article
                else
                    render json: @article.errors, status: unprocessable_entity
                end
            end

            def show
                @article = Article.find(params[:id])
                render json: @article
            end

            def update
                @article = Article.find(params[:id])

                if @article.update(article_params)
                    render json: @article
                else
                    render json: @article.errors, status: unprocessable_entity
                end
            end

            def destroy
                @article = Article.find(params[:id])

                if @article.present?
                    @article.destroy
                    render json: @article
                else
                    render json: { error: 'Article not found'}
                end
            end

            private

            def article_params
                params.require(:article).permit(:title, :content)
            end

        end
    end
end 