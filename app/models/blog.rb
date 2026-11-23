class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :topics, optional: true

  paginates_per 5

  def self.matching_title(query)
    pattern = "%#{sanitize_sql_like(query)}%"
    where("title ILIKE ?", pattern)
  end

  def self.most_recent
    order("created_at DESC")
  end
end
