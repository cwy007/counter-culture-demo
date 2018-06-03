class AddScansCounterCacheToQrcodes < ActiveRecord::Migration[5.1]
  def self.up
    add_column :qrcodes, :scans_counter_cache, :integer, null: false, default: 0
  end

  def self.down
    remove_column :qrcodes, :scans_counter_cache
  end
end
