class WineSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :wine, :region, :country, :year, :opened, :image, :price, :rating
end
