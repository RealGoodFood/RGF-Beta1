class CommentsController < ApplicationController
  before_filter :authenticate_user!
  #uses_tiny_mce :only => [:new, :create, :edit, :update]
  #uses_tiny_mce :options => {
     #                         :theme => 'advanced',
     #                      :theme_advanced_resizing => true,
     #                   :theme_advanced_resize_horizontal => false,
     #                :plugins => %w{ table fullscreen }
     #           }


  def index 
    #@comments = Comment.all
    @my_comment = Comment.find_all_by_user_id(current_user)
       logger.info "my comments "+ @my_comment.inspect
  end 


  def show 
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = "Successfully created comment."
      redirect_to listing_url(@comment.listing_id,  :order => "created_at ASC")
    else
      render :action => 'new'
    end
  end
  
  def edit
    @comment = Comment.find(params[:id])
  end
  
  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      flash[:notice] = "Successfully updated comment."
      redirect_to listing_url(@comment.listing_id)
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Successfully destroyed comment."
    redirect_to listing_url(@comment.listing_id)
  end
end
