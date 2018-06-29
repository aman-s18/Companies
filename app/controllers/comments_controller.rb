class CommentsController < ApplicationController
  def create
    @company = Company.find(params[:company_id])
    @comment = @company.comments.create(comment_params)
    redirect_to company_path(@company)
  end
  def destroy
    @company = Company.find(params[:company_id])
    @comment = @company.comments.find(params[:id])
    @comment.destroy
    redirect_to company_path(@company)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end