class TopicsController < ApplicationController
  include TitleConcern
  layout "blog"

  before_action :set_topics_with_blogs, only: [:show]

  def show
    @topic = Topic.friendly.find(params[:id])
    @blogs = @topic.blogs.page(params[:page])
    @title = title_delimiter(@topic.title)
  end

  private

  def set_topics_with_blogs
    @topics_on_sidebar = Topic.has_blogs
  end
end
