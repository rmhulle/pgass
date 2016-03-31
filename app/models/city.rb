class City < ActiveRecord::Base

belongs_to :region, dependent: :destroy

rails_admin do
  list do
    field :name
    field :code
  end
end


end
