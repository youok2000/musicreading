class AddColumnsToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :composer, :string
    add_column :songs, :age, :string
    add_column :songs, :tonality, :string
    add_column :songs, :composition, :text
    add_column :songs, :rank, :text
    add_column :songs, :partTarget, :text
    add_column :songs, :overallTarget, :text
    add_column :songs, :partPlan, :text
    add_column :songs, :overallPlan, :text
  end
end
