class CreateAttendees < ActiveRecord::Migration[5.0]
  def change
    create_table :attendees do |t|
      t.string :name
      t.date :date_of_birth
      t.string :identification
      t.string :address

      t.timestamps
    end
  end
end
