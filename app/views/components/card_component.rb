# frozen_string_literal: true

class CardComponent < ApplicationComponent
  def template
    h1 { "Card" }
    p { "Find me in app/views/components/card_component.rb" }
  end
end
