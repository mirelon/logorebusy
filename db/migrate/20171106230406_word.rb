class Word < ActiveRecord::Migration[5.1]
  def change
    add_attachment :words, :image
  end
end
