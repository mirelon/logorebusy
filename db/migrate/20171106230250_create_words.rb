class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :prefix
      t.string :suffix
      t.string :lang

      t.timestamps
    end
  end
end
