class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|

      t.string	:emotion
      t.text 	:learned
      t.integer	:lesson
      t.timestamps
    end
  end
end
