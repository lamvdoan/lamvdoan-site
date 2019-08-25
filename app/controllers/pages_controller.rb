require 'dotenv/load'

class PagesController < ApplicationController
  include TitleConcern

  before_action :set_prefix
  
  def home
    @title = "Lam Doan"
  end

  def about
    @title = @prefix + title_delimiter("About")
  end

  def resume
    @url = ENV.fetch("RESUME_URL")
    @title = @prefix + title_delimiter("Resume")
  end

  private

  def set_prefix
    @prefix = "LVD"
  end
end
