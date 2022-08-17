class CommentsController < ApplicationController

def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user_id = current_user.id if current_user
    if @comment.save
        redirect_to post_path(@post), notice: "Comment saved"
    else
        redirect_to post_path(@post), notice: "Did not save"
    end

    
end

def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post)
end

def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
end

def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)

end

private 

    def comment_params
        params.require(:comment).permit(:body, :user_id, :post_id)
    end



end
