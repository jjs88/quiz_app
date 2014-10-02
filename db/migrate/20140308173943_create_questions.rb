class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :quiz, index: true
      t.text :question

      t.timestamps
    end
  end
end
