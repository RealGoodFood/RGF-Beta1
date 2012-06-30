class PostsController < InheritedResources::Base

  def index  
    #@posts = Post.all(:order => "created_at ASC")  
    @posts = Post.order("created_at desc").limit(10)
    respond_to do |format|  
      format.html  
    end  
  end  

  def create  
    @post = Post.create(params[:post]) 

    respond_to do |format|  
      if @post.save  
        format.html { redirect_to group_path(@post.group.slug) }  
      else  
        flash[:notice] = "Message failed to save."  
        format.html { redirect_to posts_path }  
      end  
    end  
   end  
  end  
