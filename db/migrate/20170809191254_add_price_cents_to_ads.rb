class AddPriceCentsToAds < ActiveRecord::Migration
  def change
    add_column :ads, :price_cents, :integer, dafault: 0
  end
end
