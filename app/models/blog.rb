class Blog < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :body, :subject
  mount_uploader :image, ImageUploader

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
