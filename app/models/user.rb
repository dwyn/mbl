class User < ActiveRecord::Base
  has_one :bucket_list
  has_many :entries, through: :bucket_list
end
