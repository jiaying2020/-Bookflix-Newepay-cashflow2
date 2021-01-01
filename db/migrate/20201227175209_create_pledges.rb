class CreatePledges < ActiveRecord::Migration[6.0]
  def change
    create_table :pledges do |t|

      BUG
      t.belongs_to    :prodoct
      t.string        :prodoct_name
      BUG
      t.datetime      :issue_date
      t.integer       :status, default: 0, null: false
      t.integer       :prodoct_price
      t.integer       :quantity
     
      t.timestamps
    end
  end
end
