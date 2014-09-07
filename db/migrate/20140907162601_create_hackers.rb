class CreateHackers < ActiveRecord::Migration
  def change
    create_table :hackers do |t|
      t.string :name
      t.string :app_name
      t.string :say_something_smart

      t.timestamps
    end
  end
end
