class CommentsController < ApplicationController
before_action :set_comment, only: [:show, :update, :edit, :destroy]

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @article = Article.find(params[:article_id])
    #@user = User.find(params[:user_id])

    @comment = @article.comments.new
    puts @comment.inspect
  end

  def create
        @article = Article.find(params[:article_id])
        #puts @article.id
        @user = User.find(current_user.id)
        #puts @user.id
        @comment = @article.comments.create(comment_params.merge(user: current_user))
        redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:article_id])
    #@comment = @article.comments.find(:id)
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to articles_path, notice: 'Comment was updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to article_path(@article), notice: 'Comment was successfully destroyed.' }
    end
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])

    end

    def comment_params
      params.require(:comment).permit(:body, :article_id, :user_id)
    end
end
