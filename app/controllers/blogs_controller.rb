class BlogsController < ApplicationController
before_action :set_blog, only: [:show, :edit, :update]

def index
 @blogs = Blog.all
#  binding.pry
end

private
def blog_params
  params.require(:blog).permit(:title, :content)
end
def set_blog
  @blog = Blog.find(params[:id])
end
end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save

    redirect_to new_blog_path, notice: "Nous avons créé un blog !"
    else
    render :new
    end
  end

  def show
    #redirect_to new_blog_path
  @blog = Blog.find(params[:id])
  end

  def edit
  # @blog = Blog.find(params[:id])
  end

# update methode
  def update
   #@blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "I edited the blog!"
    else
      render :edit
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end
