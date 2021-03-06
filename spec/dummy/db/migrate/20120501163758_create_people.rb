class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.column    :ip, :inet
      t.column    :subnet, :cidr
      t.integer :tag_ids, :array => true
      t.string  :tags, :array => true
      t.text    :biography
      t.integer :lucky_number
      t.column  :num_range, :numrange

      t.timestamps
    end
  end
end
