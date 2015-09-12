class CreateResDates < ActiveRecord::Migration
  def change
    create_table :res_dates do |t|
      t.datetime :res_date

      t.timestamps
    end
  end
end
