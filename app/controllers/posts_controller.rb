class PostsController < ApplicationController
    before_action :find_post, only:[:show, :edit, :update, :destroy]

    def index 
    @posts = Post.all
    end 

    def new
    @post = Post.new
    @doggos = Doggo.all
    @categories = Category.all
    end

    def show
   
    end

    def create 
     @post = Post.create(post_params)
     redirect_to(@post)
    end

    def edit
    @doggos = Doggo.all 
    @categories = Category.all
    end

    def update
    @post.update(post_params)
    redirect_to(post_path(@post))
    end

    def destroy
    @post.destroy
    redirect_to(home_path)
    end

    private

    def post_params
    permitted = params.require(:post).permit(:title, :content, :doggo_id, category_ids:[], categories_attributes: [:name])
    end

    def find_post
    @post = Post.find(params[:id])
    end
end
