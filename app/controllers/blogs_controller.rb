class BlogsController < ApplicationController
  layout "blog"

  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :set_topics_on_sidebar, except: [:update, :create, :destroy]

  # GET /blogs
  def index
    @blogs = Blog.order(:title).page(params[:page])
  end

  # GET /blogs/1
  def show
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
      else
        render :new
      end
    end
  end

  # PATCH/PUT /blogs/1
  def update
    if @blog.update(blog_params)
      redirect_to @blog, notice: 'Blog was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /blogs/1
  def destroy
    @blog.destroy
    redirect_to blogs_url, notice: 'Blog was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :body, :topic_id, :description)
    end

    def set_topics_on_sidebar
      @topics_on_sidebar = Topic.has_blogs
    end
end
