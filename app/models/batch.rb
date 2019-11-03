class Batch
  include Mongoid::Document
  validates :name, :unit, :fodderType, presence: {message: "Fältet är obligatoriskt"}

  field :name, type: String
  field :amount, type: Integer
  field :refillable, type: Mongoid::Boolean
  field :unknownAmount, type: Mongoid::Boolean
  field :unit, type: String
  field :fodderType, type: String
end
