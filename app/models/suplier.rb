class Suplier < ActiveRecord::Base
  has_many :products , through: :supliers_products
end
