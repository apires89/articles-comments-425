class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    @comment = Comment.new
  end

  def create
    #create comment based on whats comming from the form
    @comment = Comment.new(comment_params)
    #associate a article with this comment
    @article = Article.find(params[:article_id])
    @comment.article = @article
    #save
    @comment.save
    #redirect to article show
    redirect_to article_path(@article)

  end

  def show
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:text)

  end

end
