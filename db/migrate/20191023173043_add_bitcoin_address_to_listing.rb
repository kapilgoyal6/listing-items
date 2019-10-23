class AddBitcoinAddressToListing < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :bitcoin_address, :string
  end
end
