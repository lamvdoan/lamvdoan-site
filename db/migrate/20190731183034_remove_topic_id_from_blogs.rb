class RemoveTopicIdFromBlogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :blogs, :topic_id, :integer
  end
end
