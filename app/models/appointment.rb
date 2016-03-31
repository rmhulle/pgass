class Appointment < ActiveRecord::Base

has_many :vendors, as: :provider
has_many :contracts

def sia_informed_enum
  ['Sim', 'Não', 'Parcialmente']
end

rails_admin do
    list do
      field :sus_code
      field :description
      field :quantity
      field :ms_habilited

    end

    edit do
      exclude_fields :created_at, :updated_at
    end

    show do
      exclude_fields :created_at, :updated_at
    end
end


end
