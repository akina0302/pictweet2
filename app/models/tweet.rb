class Tweet < ApplicationRecord
 validates :text, presence: true
 belongs_to :user
 has_many :comments

 def self.search(search)
  if search != ""
    Tweet.where('text Like(?)',"%#{search}%")
  else
    Tweet.all
  end
 end

end
