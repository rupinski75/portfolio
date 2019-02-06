class CommentsController < ApplicationController
before_action :set_comment, only: [:show, :update, :edit, :destroy]

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
    @article = Article.find(params[:article_id])
  end

  def create
        @comment = @article.comments.create(params[:comment].permit(:comment))
        redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:article_id])
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
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Comment was successfully destroyed.' }
    end
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
      @user = User.find(:user_id)

    end

    def comment_params
      params.require(:comment).permit(:body, :article_id, :user_id)
    end
end
