class AnimalGroup
  include Mongoid::Document
  validates :name, :amount, presence: {message: "Fältet är obligatoriskt"}

  field :name, type: String
  field :amount, type: Integer
end
