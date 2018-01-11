class Blog < ApplicationRecord
  def self.search(term)
    if term
      titles = Blog.where('title LIKE ?', "%#{term}%")
      bodys = Blog.where('body LIKE ?', "%#{term}%")
      titles + bodys
    else
      all
    end
  end
end
