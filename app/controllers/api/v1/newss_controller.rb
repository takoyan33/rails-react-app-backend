class Api::V1::NewssController < ApplicationController
  #全件表示
  def index
    newss = News.order(updated_at: :desc)
    render json: newss
  end
  #特定のデータを表示
  def show
    news = News.find(params[:id])
    render json: news
  end
  
  #新規作成
  def create
    news = News.new(news_params)
    if news.save
      render json: news
    else
      render json: news.errors, status: 422
    end
  end

  def update
    news = News.find(params[:id])
    if news.update(news_params)
      render json: news
    else
      render json: news.errors, status: 422
    end
  end

  def destroy
    if News.destroy(params[:id])
      head :no_content
    else
      render json: { error: "Failed to destroy" }, status: 422
    end
  end

  def destroy_all
    if News.destroy_all
      head :no_content
    else
      render json: { error: "Failed to destroy" }, status: 422
    end
  end

  private

  def news_params
    params.require(:news).permit(:title, :body, :tag)
  end
end