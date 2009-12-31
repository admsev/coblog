class CommentsController < ApplicationController
  before_filter :load_post, :only=>[:new, :create, :update, :show]

  # GET /comments/1
  # GET /comments/1.xml
  def show
    @comment = @post.comments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.xml
  def new
    @comment = @post.comments.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # POST /comments
  # POST /comments.xml
  def create

    @comment = current_user.comments.new(params[:comment])
    @comment.post = @post

    respond_to do |format|
      if @comment.save
        flash[:notice] = 'Comment was successfully created.'
        format.html { redirect_to(@comment.post) }
        format.xml  { render :xml => @comment, :status => :created, :location => @comment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(@comment.post) }
      format.xml  { head :ok }
    end
  end

  private
    def load_post
      @post = Post.find(params[:post_id])
    end

end

