class Product < ActiveRecord::Base
  has_many :supliers, through: :supliers_products
  belongs_to :category
  #validates :category
  validate  :name_cannot_be_blank
  def name_cannot_be_blank
    errors.add(:name,"name cannot be blank") if name.blank?
  end
  after_destroy :log_destroy_action
  def log_destroy_action
    puts "destroy callback"
  end
end
