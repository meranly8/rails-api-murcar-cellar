class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :comment, :wine_id
end
