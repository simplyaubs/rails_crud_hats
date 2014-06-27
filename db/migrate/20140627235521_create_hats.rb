class CreateHats < ActiveRecord::Migration
  def change
    create_table :hats do |t|
      t.string :brand
      t.string :fit
    end
  end
end
