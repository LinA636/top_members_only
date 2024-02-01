class PostsController < ApplicationController
    before_action :require_login, only: [:new, :create]

    def index 
        @posts = Post.all
    end

    def new 
        @post = Post.new
    end

    def create 
        @post = current_user.posts.new(post_params)

        if @post.save
            redirect_to posts_path, notice: 'Post was successfully created.'
        else
            render :new,  status: :unprocessable_entity
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    private

    def require_login
        if user_signed_in?
            # allow the user to create new posts
        else
            redirect_to user_session_path
        end
    end

    def post_params
        params.require(:post).permit(:title, :content, :user_id)
    end
end
