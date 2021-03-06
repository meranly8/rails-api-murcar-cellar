class WineSerializer
  include FastJsonapi::ObjectSerializer
  
  has_many :comments
  attributes :wine, :region, :country, :year, :opened, :image, :price, :rating, :quantity,:created_at
end
