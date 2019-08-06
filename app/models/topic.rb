class Topic < ApplicationRecord
  has_many :blogs

  def self.has_blogs
    includes(:blogs).where.not(blogs: { topic_id: nil })
  end
end
