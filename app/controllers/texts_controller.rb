class TextsController < ApplicationController

  def index
    texts = Text.all
    render json: texts
  end

  def show

  end
end
