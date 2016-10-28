class CreateMessage < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :user, index: true, foreign_key: true
      t.string :content
      
      t.timestamps
    end
  end
end
