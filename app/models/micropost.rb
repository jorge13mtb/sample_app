class Micropost < ActiveRecord::Base
  attr_accessible :content

  belongs_to :user

  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true


#scope :today, :conditions => { :created_at => Date.today }

  default_scope order: 'microposts.created_at DESC'


end
