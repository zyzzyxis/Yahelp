# a resturuant looks like this
# res_data = {
#   id: INTEGER *MUST BE UNIQUE,
#   name: STRING,
#   location: {
#     city: STRING,
#     state: STRING,
#   },
#   delivery: BOOLEAN,
#   days_open: STRING *DAYS SEPERATED BY COMMAS(NO SPACES),
#   likes: INTEGER,
#   dishes: ARRAY OF OBJECTS/HASHES
#     { name: STRING, price: FLOAT, ingredients: ARRAY OF STRINGS },
#   ],
#   reviews: ARRAY OF HASHES [
#     {user_id: INTEGER *id of user object, rating: INTEGER 0-5}
#   ]
# }
user1 = {
  id: 1,
  name: "Tony",
}
user2 = {
  id: 2,
  name: "Sally",
}
res1 = {
  id: 1,
  name: "Spicy Thai",
  location: {
    city: "SLC",
    state: "UT",
  },
  delivery: true,
  days_open: "mon,tues,wed,thur,fri,sat,sun",
  likes: 1000,
  dishes: [
    { name: "Pad Thai", price: 10.25, ingredients: ["noddles", "peppers"] },
    { name: "Drunken Noodle", price: 9.25, ingredients: ["noddles", "chicken"] },
  ],
  reviews: [
    { user_id: 1, rating: 5 },
    { user_id: 2, rating: 3 },
  ],
}
res2 = {
  id: 2,
  name: "Albertos",
  location: {
    city: "SLC",
    state: "UT",
  },
  delivery: false,
  days_open: "mon,tues,wed,thur,fri,sat",
  likes: 500,
  dishes: [
    { name: "Tacos", price: 8.25, ingredients: ["tortilla", "carne"] },
    { name: "Quesidalla", price: 9.25, ingredients: ["tortilla", "cheese"] },
  ],
  reviews: [
    { user_id: 1, rating: 2 },
    { user_id: 2, rating: 4 },
  ],
}

@user_arr = [user1, user2]
@res_arr = [res1, res2]



# OBJECTIVES
# method w/ param restuarant, returns the menu of the param
def food_list 
  @res_arr
end

puts res2[:dishes][0][:ingredients][0] #returns both

def restuarant_menu(menu_full)
  name = menu_full[:name]
  food = menu_full[:dishes][0][:name]
  cost = menu_full[:dishes][0][:price]
  return "Here is the menu of #{name}: The #{food} costs $#{cost}."
end

puts restuarant_menu(res1) 

 
# # method param restuarant, return avg review
# def avg_review
#   @res_arr.each do |res|
#       #need to take the res reviews then the rating from user 1 and 
#       #the rating from user 2 and then average them together with a label
#   end
# end

# puts avg_review




# ratings = @res_arr[:reviews][0][:rating][1].to_i
# puts ratings

def avg_rev2
  # sum = 0
  @res_arr.each do |x|
    x[:reviews].each do |y|
      puts y[:rating]
    end
  end
end
avg_rev2



# getting reviews
# puts res2[:reviews][0][:rating]
# puts res2[:reviews][1][:rating]
#to get average, take the number of reviews, add them all up, then divide by the number of reviews

# create array of restuarant and do crud actions
# create read update delete 


# method to return address
def address_ret(res_name)
  id = res_name[:id]
  name = res_name[:name]
  address1 = res_name[:location][:city]
  address2 = res_name[:location][:state]
  return "#{id}: The location of #{name} is #{address1}, #{address2}"
end
puts address_ret(res2)

# method to return days of operation
def days_op(open)
  id = open[:id]
  name = open[:name]
  days = open[:days_open].gsub(',', ', ') 
  return "#{id}: #{name} is open on the following days: #{days}"
end
puts days_op(res2)


# a simple method that takes restaurants and updates that to your array

# loop through your restaurants and return those with likes > 500 (select/filter)
def popular_res
    @res_arr.each do |res|
      if res[:likes] > 600
        return "The following restuarant is popular: #{res[:name]}"
      end
    end
end

puts popular_res
      





