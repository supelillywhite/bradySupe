class Blog < ApplicationRecord
  belongs_to :user
  def self.search(term)
    if term
      titles = Blog.where('title LIKE ?', "%#{term}%")
      bodys = Blog.where('body LIKE ?', "%#{term}%")
      subjects = Blog.where('subject LIKE ?', "%#{term}%")
      titles + bodys + subjects
    else
      all
    end
  end
end
