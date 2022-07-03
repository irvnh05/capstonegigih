class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.integer :personal_identitty
      t.string :name
      t.string :insident
      t.string :location
      t.string :status

      t.timestamps
    end
  end
end
