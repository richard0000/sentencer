class CreateEntitySentences < ActiveRecord::Migration[6.0]
  def change
    create_table :entities_sentences do |t|
      t.references :entity, null: false, foreign_key: true
      t.references :sentence, null: false, foreign_key: true

      t.timestamps
    end
  end
end
