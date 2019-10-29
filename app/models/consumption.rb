class Consumption
  include Mongoid::Document
  field :first_date, type: Date
  field :last_date, type: Date
  field :amount, type: Integer
  field :batch, type: String
  field :animal_group, type: String
end
