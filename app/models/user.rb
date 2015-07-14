class User < ActiveRecord::Base
  validates :user_name, presence: true, uniqueness: true, length: { maximum: 50 }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }

  def first_name
    user_name.split(" ").first
  end

  def last_name
    user_name.split(" ").last
  end
end
