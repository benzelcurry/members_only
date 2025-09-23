class PostsController < ApplicationController
  before_action :authenticate_user!, except: [ :index ]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to posts_path, notice: "Post successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.expect(post: [ :title, :body ])
  end
end
