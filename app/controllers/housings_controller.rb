class HousingsController < ApplicationController

    def index
        
    end

    def edit
        @housing = Housing.find(params[:id])        
    end

    def show
    end
    
    def update
        @housing = Housing.find(params[:id])
        
        puts "###########################################"
        puts @housing
        puts params[:housing][:ad_price]

        @housing.update(
            ad_price: params[:housing][:ad_price],
            property_category: params[:housing][:property_category],
            localization: params[:housing][:localization],
            comment: params[:housing][:comment],
            area: params[:housing][:area],
            ad_url: params[:housing][:ad_url],
            offer_price:  params[:housing][:offer_price],
            repairs_price: params[:housing][:repairs_price],
            annual_rent: params[:housing][:annual_rent],
            notary_fees: params[:housing][:notary_fees],
            agency_fees: params[:housing][:agency_fees],
            pno_insurance: params[:housing][:pno_insurance],
            property_tax: params[:housing][:property_tax],
            rental_management: params[:housing][:rental_management],
            rental_unpayment_insurance: params[:housing][:rental_unpayment_insurance],
            building_co_tax: params[:housing][:building_co_tax],
            maintenance_percentage: params[:housing][:maintenance_percentage]
          )
    end

end
