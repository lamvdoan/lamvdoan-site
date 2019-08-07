class TopicsController < ApplicationController
  layout "blog"

  before_action :set_topics_with_blogs, only: [:show]

  def show
    @blogs = Topic.friendly.find(params[:id]).blogs
  end

  private

  def set_topics_with_blogs
    @topics_on_sidebar = Topic.has_blogs
  end
end
