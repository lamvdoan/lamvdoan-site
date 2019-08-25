class TopicsController < ApplicationController
  include TitleConcern
  layout "blog"

  before_action :set_topic, only: [:show]
  before_action :set_topics_with_blogs, only: [:show]
  before_action :set_title_on_header, only: [:show]

  def show
    @blogs = @topic.blogs.most_recent.page(params[:page])
    @title = title_delimiter(@topic.title)
  end

  private

  def set_topic
    @topic = Topic.friendly.find(params[:id])
  end

  def set_topics_with_blogs
    @topics_on_sidebar = Topic.has_blogs
  end

  def set_title_on_header
    @title_on_header = @topic.title
  end
end
