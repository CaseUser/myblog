class Article < ApplicationRecord
	belongs_to :user
	has_many :comments, :dependent => :destroy
  	validates :title, presence: true,
    		          length: { maximum: 50 }
  	validates :post, presence: true
  	validates :user_id, presence: true
end
