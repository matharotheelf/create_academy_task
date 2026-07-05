class AddProviderToVideo < ActiveRecord::Migration[8.1]
  def change
    add_column :videos, :provider, :integer, default: 0
  end
end
