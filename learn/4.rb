# Run the code in this file by typing:
# ruby 4.rb
# into your command-line interface.

#we use hashes when position matters

# me = { name: "Eli", location: "Chicago", status: "student"}
# puts me

me = { 
    name: "Eli", 
    location: {
        city: "Chicago", 
        neighborhood: "evanston",
        state: "IL"
        },
    status: "student",
    timeline: [
        {action: "eating", time: "morning"},
        {action: "coding", time: "afternoon"},
        {action: "sleeping", time: "evening"}
    ]
    }

# puts me[:name]
# puts me[:location][:state]
# puts me[:status]

#adding something to a hash

me[:pets] = "Hobbes"


#modifying a hash by changing an attribute to a hash

me[:name] = { first:"Eli", last:"Coon"}
puts me[:timeline][2][:action]