# frozen_string_literal: true

class ArticlesController < ApplicationController
  layout -> { ApplicationLayout }

  def index
    render Articles::IndexView.new(
      articles: Article.all.load_async
    )
  end

  def show
    render Articles::ShowView.new(
      article: Article.find(params[:id])
    )
  end
end
