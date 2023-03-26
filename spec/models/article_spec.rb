require 'rails_helper'

RSpec.describe Article do
  describe "an ordinary article" do
    it "has text and a title" do
      test_article = create(:article)
      expect(test_article.text.nil?).to be false
      expect(test_article.title.nil?).to be false
    end
  end
end