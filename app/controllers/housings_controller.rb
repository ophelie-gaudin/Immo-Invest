class HousingsController < ApplicationController
    before_action :set_user

    def index
        
    end

    def edit
        @housing = Housing.find(params[:id])        
    end

    def show
        @housing = Housing.find(params[:id])

    end

    def create

        @housing = Housing.create(
            ad_price: params[:housing][:ad_price],
            property_category: params[:housing][:property_category],
            localization: params[:housing][:localization],
            
            area: 0,
            offer_price:  params[:housing][:ad_price],
            repairs_price: 0,
            annual_rent: 0,
            notary_fees: params[:housing][:ad_price] * 0.08,
            agency_fees:  params[:housing][:ad_price] * 0.08,
            pno_insurance: 0,
            property_tax: 0,
            rental_management: 0,
            rental_unpayment_insurance: 0,
            building_co_tax: 0,
            maintenance_percentage: 0.02,
           # rental_vacancy: 0.055
           )

    end

    
    def update
        @housing = Housing.find(params[:id])

   

        
        def calculate_profitability(price)
            housing = Housing.find(params[:id])

            if(housing.pno_insurance == true)
                pno = 0.03
            else
                pno = 0
            end

            if(housing.rental_management == true)
                management = 0.07
            else
                management = 0
            end


            if(housing.rental_unpayment_insurance == true)
                unpayment = 0.04
            else
                unpayment = 0
            end

            if(housing.new_property == true)
                notary_fees = 0.03
            end


            fees = housing.property_tax + (price * housing.maintenance_percentage) + housing.building_co_tax + (housing.annual_rent * management) + (housing.annual_rent * pno) + (housing.annual_rent * unpayment)


            profitability = ((housing.annual_rent*(1-housing.rental_vacancy)) - fees) * 100 / (price  + housing.repairs_price + (price*housing.notary_fees) + (price*housing.agency_fees))
        end
    
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

            maintenance_percentage: params[:housing][:maintenance_percentage],
            rental_vacancy: params[:housing][:rental_vacancy],
            new_property: params[:housing][:new_property]
          )

        @housing.update(
            ad_profitability: calculate_profitability(Housing.find(params[:id]).ad_price),
            offer_profitability: calculate_profitability(Housing.find(params[:id]).offer_price)
        )

        redirect_to housing_path

    end

    private

    def set_user
        @user = current_user
    end


end

