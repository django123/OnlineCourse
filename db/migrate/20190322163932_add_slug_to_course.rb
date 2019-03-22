class AddSlugToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :slug, :string
  end
end
