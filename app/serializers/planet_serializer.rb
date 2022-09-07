class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :distance_from_earth, :nearest_star, :image
  has_many :missions
    has_many :scientists, through: :missions
end
