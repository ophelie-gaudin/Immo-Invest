class CreateHousings < ActiveRecord::Migration[5.2]
  def change
    create_table :housings do |t|
      t.number, :ad_price
      t.string, :property_category
      t.string, :localization
      t.number, :area
      t.string, :ad_url
      t.textarea, :comment
      t.number, :offer_price
      t.number, :repairs_price
      t.number, :annual_rent
      t.number, :notary_fees
      t.number, :agency_fees
      t.boolean, :pno_insurance
      t.number, :property_tax
      t.boolean, :rental_management
      t.boolean, :rental_unpayment_insurance
      t.number, :building_co_tax
      t.number :maintenance_percentage

      t.timestamps
    end
  end
end
