class Blog < ApplicationRecord
  def self.search(term)
    if term
      where('subject LIKE ?', "%#{term}%").order('id DESC')
    else
      order('id DESC') 
    end
  end
end
