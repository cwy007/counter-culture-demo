class AddLogsCountToQrcodes < ActiveRecord::Migration[5.1]
  def self.up
    add_column :qrcodes, :logs_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :qrcodes, :logs_count
  end
end
