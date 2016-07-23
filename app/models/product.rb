class Product < ActiveRecord::Base
end
class Order < ActiveRecord::Base
  belongs_to :product
end
class Product < ActiveRecord::Base
  has_many :orders
end