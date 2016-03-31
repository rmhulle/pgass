class Region < ActiveRecord::Base

has_many :cities


  rails_admin do
    list do
      field :name
      field :code
    end
  end


end
