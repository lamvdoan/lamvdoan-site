class TopicsController < ApplicationController
  layout "blog"
  # before_action :set_topics_with_blogs, only: [:show]

  def show
    @topic = Topic.find(params[:id])
    @blogs = @topic.blogs
  end

  private

  # def set_topics_with_blogs
  #   @topics_with_blogs = Topic.has_blogs
  # end
end
