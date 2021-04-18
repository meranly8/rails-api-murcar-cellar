class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def show
        comment = Comment.find_by(id: params[:id])
        render json: CommentSerializer.new(comment, include: [:wine])
    end
end
