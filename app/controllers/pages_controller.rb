require 'dotenv/load'

class PagesController < ApplicationController
  include TitleConcern

  def home
  end

  def about
    @title = title_delimiter("About")
  end

  def resume
    @url = ENV.fetch("RESUME_URL")
    @title = title_delimiter("Resume")
  end
end
