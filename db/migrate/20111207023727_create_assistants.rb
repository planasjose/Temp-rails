class CreateAssistants < ActiveRecord::Migration
  def change
    create_table :assistants do |t|
      t.string :name
      t.string :twitter_name

      t.timestamps
    end
  end
end
