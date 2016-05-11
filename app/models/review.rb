class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content, presence: :true
  validates :rating, inclusion: { in: [1,2,3,4,5], allow_nil: false, :message =>"Should be between 1 and 5"}

end
