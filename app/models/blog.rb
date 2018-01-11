class Blog < ApplicationRecord
  def self.search(term)
    if term
      titles = Blog.where('LOWER(title) LIKE ?', "%#{term.downcase}%")
      bodys = Blog.where('LOWER(body) LIKE ?', "%#{term.downcase}%")
      subjects = Blog.where('LOWER(subject) LIKE ?', "%#{term.downcase}%")
      titles + bodys + subjects
    else
      all
    end
  end
end
