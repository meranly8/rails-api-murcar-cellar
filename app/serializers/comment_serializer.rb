class CommentSerializer
  include FastJsonapi::ObjectSerializer
  
  belongs_to :wine
  attributes :name, :comment, :wine_id, :created_at
end
