class PagesController < ApplicationController
  def home
  end

  def about
  end

  def resume
    @url = "https://drive.google.com/file/d/1v95sdxJNloZb_fMNXpc0ERHYZGqZsHQo/preview"
  end
end
