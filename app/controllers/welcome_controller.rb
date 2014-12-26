class WelcomeController < ApplicationController
  def index
    @content = $content
  end
end
