class CreateInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :infos do |t|
      t.string :visa
      t.text :safety
      t.references :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
