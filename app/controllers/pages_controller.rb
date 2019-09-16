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
    @url_pdf = "https://docs.google.com/document/d/1ILyR5rVdyX4kQiIoWqIaKXEF-6LqEOAEujnGpY7gUcE/export?format=pdf"
    @url_publish = "https://docs.google.com/document/d/e/2PACX-1vQ3ZirMztSs8iPmhdjiDVJ2Q45H54neTHCzB6ECsgy5XoKmIk077viNp2M2vMTNY858zzdlGVmavH-i/pub?embedded=true"
  end

  private

  def set_prefix
    @prefix = "LVD"
  end
end
