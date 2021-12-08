class CreateHousings < ActiveRecord::Migration[5.2]
  def change
    create_table :housings do |t|
      t.integer :ad_price
      t.string :property_category
      t.string :localization
      t.integer :area
      t.string :ad_url
      t.text :comment
      t.integer :offer_price
      t.integer :repairs_price
      t.integer :annual_rent
      t.integer :notary_fees
      t.integer :agency_fees
      t.boolean :pno_insurance
      t.integer :property_tax
      t.boolean :rental_management
      t.boolean :rental_unpayment_insurance
      t.integer :building_co_tax
      t.integer :maintenance_percentage
      t.integer :ad_profitability
      t.integer :offer_profitability
      t.boolean :new_property
      t.integer :rental_vacancy



      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end
