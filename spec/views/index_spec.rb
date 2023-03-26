require 'rails_helper'
require 'phlex/testing/rails/view_helper'

RSpec.describe Articles::IndexView do
  include Phlex::Testing::Rails::ViewHelper

  describe "articles/index" do
    it "shows all articles" do
      50.times { create(:article) }
      sample = Article.find(Article.pluck(:id).sample)
      output = render Articles::IndexView.new(articles: Article.all)
      expect(output.nil?).to be false
      expect(output).to match(/#{sample.text}/)
    end
  end
end