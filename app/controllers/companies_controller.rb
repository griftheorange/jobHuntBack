class CompaniesController < ApplicationController
    def index 
        @companies = Company.all
        render json: @companies
    end
    
    
    def show
        @company = Company.find(params[:id])
        render json: @company
    end    



    def create 
        @company = Company.create(username: params[:username],password_digest: params[:password_digest])
        if @company.valid?
                render json: {token: genToken(@company)}
        else 
            render json: {errors: @company.errors.full_messages} 
        end
    end   


    def login
        @company = Company.find_by(username: params[:companyName])

        if @company 
            
            if @company.authenticate(params["password"])

                render json: {token: genToken(@company)}
            else 
                render json: {errors: ["Password Incorrect"]}
            end
        else 
            render json: {errors: ["Company not fount"]}
        end    
    end    
   
    
    private

    def hmac_secret
        'justmyrandompassword'
    end    
    

    def genToken(company)
        payload ={id: @company.id,type: "company"}
        token = JWT.encode payload, hmac_secret, "HS256"
    end


end