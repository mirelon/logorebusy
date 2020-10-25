class CreateFarebneSlova < ActiveRecord::Migration[5.1]
  def change
    create_table :farebne_slova do |t|
      t.string :slovo

      t.timestamps
    end
  end
end
