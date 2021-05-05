class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show, :destory]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      format.html { redirect_to posts_path, notice: "Post was successfully created!" }
      format.json { render :index, status: :created }
    else
      format.html { render :new }
      format.json { render json: @post.errors, status: :unproccessable_entity }
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body)
    end
end
