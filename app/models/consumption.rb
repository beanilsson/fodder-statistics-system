class Consumption
  include Mongoid::Document
  validates :first_date, :last_date, :amount, :batch, :animal_group, presence: {message: "Fältet är obligatoriskt"}
  validate :date_span

  field :first_date, type: Date
  field :last_date, type: Date
  field :amount, type: Integer
  field :batch, type: String
  field :animal_group, type: String

  private
  def date_span
    return false if last_date.nil?
    unless last_date >= first_date
      errors.add :last_date, 'måste vara samma som, eller efter, första utfodringsdatum'
    end
  end
end
