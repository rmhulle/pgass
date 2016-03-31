class Contract < ActiveRecord::Base


belongs_to :appointment
  def contract_type_enum
    ['Contrato', 'Convenio', 'Proprio']
  end

  def total

    (self.sus_value + self.sus_complement)*self.quantity

  end

  rails_admin do
    list do
      field :contract_type
      field :contract_number
      field :expiration_date
      field :quantity
      field :total
    end
  end

end
