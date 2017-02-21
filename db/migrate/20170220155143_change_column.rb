class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:profiles, :picture, 'https://res.cloudinary.com/djlbddlel/image/upload/v1487710238/rmwmbqgumg4iumczmy8i.png')
  end
end
