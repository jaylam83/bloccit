class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  belongs_to :topic
  has_one :summaries
  

  default_scope { order('created_at DESC') }

end
