class PagesController < ApplicationController
  include TitleConcern

  def home
  end

  def about
    @title = title_delimiter("About")
  end

  def resume
    @url = "https://drive.google.com/file/d/1tPI3EfIm4UvhBcKIwBHJQ1LG2JokokI7/preview"
    @title = title_delimiter("Resume")
  end
end
