class PagesController < ApplicationController
  def home
  end

  def about
  end

  def resume
    @url = "https://drive.google.com/file/d/1MUklKKfn4W21DZ1BDQjorQC5R5AbELso/preview"
  end
end
