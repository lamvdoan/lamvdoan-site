class Blog < ApplicationRecord
  belongs_to :topics, optional: true

  paginates_per 5
end
