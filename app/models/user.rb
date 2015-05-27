class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

has_many :posts, dependent: :destroy
has_many :comments, dependent: :destroy
has_many :votes, dependent: :destroy
has_many :favorites, dependent: :destroy
mount_uploader :avatar, AvatarUploader

 def admin?
    role == 'admin'
  end

  def moderator?
    role == 'moderator'
  end

  def favorited(post)
    favorites.where(post_id: post.id).first
  end 

  def voted(post)
    if votes.where(post_id: post.id)
      votes.where(post_id: post.id).first
    else
      nil
    end
  end

  def self.top_rated
    self.select('users.*') #Select all attributes of the user
    .select('COUNT(DISTINCT comments.id) AS comments_count') # Count comments made by user
    .select('COUNT(DISTINCT posts.id) AS posts_count') # Count the posts made by the user
    .select('COUNT(DISTINCT comments.id) + COUNT(DISTINCT posts.id) AS rank') #Adding the comment and post count and labelling the sum rank
    .joins(:posts) #Ties the posts table to users table via user_id
    .joins(:comments) #Ties the comments table to users table via user_id
    .group('users.id') #Intrusts db to group resutls so that each user will be represented by a row
    .order('rank DESC') #Intructs the database to order the results in descending order
  end
  

end


