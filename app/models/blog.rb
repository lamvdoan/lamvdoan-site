class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :topics, optional: true

  paginates_per 5

  def self.most_recent
    order("created_at DESC")
  end
end
