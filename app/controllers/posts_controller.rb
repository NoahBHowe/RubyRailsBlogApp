class PostsController < ApplicationController
    def index
        # Assign all posts from model to instance variable to pass into index view
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        Post.find(params[:id]).update_attributes(post_params)

        redirect_to posts_path
    end

    def create
        post = Post.create(post_params)

        # Redirect to /posts via route prefix as defined by "resources :posts"
        redirect_to posts_path
    end

    private

    # "Strong parameters" used in mass-assignment as per the above code AND to increase security to reject any parameters that are not permitted here
    def post_params
        params
        .require(:post)
        .permit(:post_text, :title, :post_image)
    end

end
