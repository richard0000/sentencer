class Entity < ApplicationRecord
  belongs_to :entity_type
  has_and_belongs_to_many :sentences
end
