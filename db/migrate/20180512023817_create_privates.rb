class CreatePrivates < ActiveRecord::Migration[5.2]
  def change
    create_table :privates do |t|
      t.string        :name
      t.string        :homeprefecture
      t.integer       :age
      t.string        :school
      t.timestamps
    end
  end
end
