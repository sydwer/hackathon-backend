class NumbersController < ApplicationController

    def index
        @numbers = Number.all 
        render json: @numbers
    end

    def show
        @number = Number.find(params[:id])
        render json: @number
    end

    def create
        number = params[:number]
        type = params[:type]
        response = RestClient.get("http://numbersapi.com/#{number}/#{type}?json")
        data = JSON.parse(response)
        Number.create({
            text: data["text"], 
            found: data["found"],
            number: data["number"],
            search_type: data["type"],
            date: data["date"]
        })
    end
end
