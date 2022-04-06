require 'audit-log'


class PostsController < ApplicationController
  before_action :log_action, only: %i[ create ]
  before_action :authenticate_user!, only: %i[ create new ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
    @post.author = current_user

    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_url, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
        PostsMailer.with(post: @post).new_post.deliver_later
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def log_action
    audit! :"#{params[:action]}_#{params[:controller]}", payload: {:title => post_params[:title]}
  end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :author, :body)
    end
end
