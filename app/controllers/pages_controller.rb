class PagesController < ApplicationController
  def home
  end

  def about
  end

  def resume
    @url = "https://drive.google.com/file/d/1tPI3EfIm4UvhBcKIwBHJQ1LG2JokokI7/preview"
  end
end
