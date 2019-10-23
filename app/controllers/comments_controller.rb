class CommentsController < ApplicationController

	def create
    @comment = Comment.new(comment_params)
    @listing = Listing.find(params[:comment][:commentable_id])
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.commentable, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { redirect_to @listing, notice: 'Comment was notice created.' }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

	private

    def comment_params
      params.require(:comment).permit(:user_id, :commentable_type, :commentable_id, :body)
    end

end
