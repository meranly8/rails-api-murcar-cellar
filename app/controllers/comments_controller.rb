class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def show
        comment = Comment.find_by(id: params[:id])
        render json: CommentSerializer.new(comment, include: [:wine])
    end

    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: CommentSerializer.new(comment)
        else
            render json: {invalid: "Error occurred when trying to save comment"}
        end
    end

    private
        def comment_params
            params.permit(:name, :comment, :wine_id)
        end
end
