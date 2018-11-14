class CreateAppoitments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
	t.string :location
	t.string :day
	t.string :reason
	t.belongs_to :doctor
	t.belongs_to :patient

      t.timestamps
    end
  end
end
