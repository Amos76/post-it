class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]  

  def index
  	@posts = Post.all

  end

  def show
     # @post = Post.find(params["id"]) # Find expects a number, e.g. `find(3)` gives us the third record
	   # @post = #<ActiveRecord object> <--Used the ID from the URL to "find" the row in the table
  end


# These two are linked
  def new  #This needs a view for typing data
    # the @post variable represents a fresh, new, empty Post object
    @post = Post.new
  end

  def create  #No view needed; for submitting data
    # Need to save the form data to the DB
    @post = Post.new(post_params)
    # if it works...
    if @post.save
      # send us to the index page
        flash[:success] = "Successfully created a post"
        redirect_to posts_path
    else #otherwise
      # give us back the form
      flash[:error] = "Oops! Something didn't work, try again."
      render :new
    end
  end


# These two are linked
  def edit  #this needs a view for typing data
    # @post = Post.find(params["id"])

  end

  def update #No view needed; for submitting data
    #Save an instance of "Post" (containing data from that row) to local var "post"
    # @post = Post.find(params["id"])
    # Call `.update` on local var "post" to update the contents of that row.
    if @post.update(post_params)
        flash[:success] = "Successfully updated '#{@post.title}'."
        redirect_to post_path(@post)
      else
        flash[:error] = "Oops! Something didn't work, try again."
        render :edit
      end
  end

  def destroy
    # @post = Post.find(params["id"])
    @post.destroy
    flash[:success] = "Successfully deleted '#{@post.title}'."
    @post = nil
    redirect_to root_path
  end

end


private
  def post_params
    params.require(:post).permit(:title, :body)
  end

  def find_post
    @post = Post.find(params["id"])
  end


