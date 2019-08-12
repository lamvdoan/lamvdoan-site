module TitleConcern
  extend ActiveSupport::Concern

  def title_delimiter title
    " | " + title
  end
end