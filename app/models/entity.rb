class Entity < ApplicationRecord
  belongs_to :entity_type
  has_and_belongs_to_many :sentences
  validates_presence_of :entity_type
  validates_presence_of :text
end
