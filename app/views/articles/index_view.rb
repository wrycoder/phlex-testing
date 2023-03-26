# frozen_string_literal: true

class Articles::IndexView < ApplicationView
  def initialize(articles:)
    @articles = articles
  end
  def template
    h1 { "Articles index" }
    @articles.each do |article|
      div do
        p { article.title }
        p { article.text }
        hr { }
      end
    end
  end
end
