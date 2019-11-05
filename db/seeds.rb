# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Search.destroy_all
Number.destroy_all
User.destroy_all





response = RestClient.get("http://numbersapi.com/1..100?json")
data = JSON.parse(response)
data.map do |info|
# data_number = data.map{|info| info[1]["number"]}
Number.create({
    text: info[1]["text"], 
    found: info[1]["found"],
    number: info[1]["number"],
    search_type: info[1]["type"],
    date: info[1]["date"]
})
end


