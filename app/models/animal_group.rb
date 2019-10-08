class AnimalGroup
  include Mongoid::Document
  field :name, type: String
  field :amount, type: Integer
end
