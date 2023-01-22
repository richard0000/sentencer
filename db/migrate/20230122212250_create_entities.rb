class CreateEntities < ActiveRecord::Migration[6.0]
  def change
    create_table :entities do |t|
      t.string :text
      t.belongs_to :entity_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
