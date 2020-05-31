class PostsController < ApplicationController
    def index
        @post = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        # @post = Post.new
    end

    private

    def post_params
        params.require(post).permit(:title, :body)
    end
end
