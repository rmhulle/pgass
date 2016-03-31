class Vendor < ActiveRecord::Base

belongs_to :provider, polymorphic: true

def nature_enum
  ['Público', 'Privado', 'Filantrópico', 'Outros']
end

rails_admin do
    list do
      field :cnes_code
      field :name
      field :nature
      field :updated_at do
        date_format :short
      end
    end
  end


end
