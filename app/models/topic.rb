class Topic < ApplicationRecord
  # validates_presence_of :title  # Test this out, with and without on the form
  
  has_many :blogs
  
  def self.by_id
    order("id ASC")
  end

  def self.has_blogs
    Topic.includes(:blogs).where.not(blogs: { id: nil })
  end
end
