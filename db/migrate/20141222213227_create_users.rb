class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :labelName
      t.string :labelScene
      t.string :bandOne
      t.string :bandTwo
      t.string :bandThree

      t.timestamps
    end
  end
end
