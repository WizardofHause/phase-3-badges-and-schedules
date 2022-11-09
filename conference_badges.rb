require 'pry'

def badge_maker(name)
    "Hello, my name is #{name}."
end
# ^^^ when provided a person's name, creates and returns
# "Hello, my name is _____."

def batch_badge_creator(array)
    array.map do |s|
        badge_maker(s)
    end
end
# ^^^ takes an array of names as an argument 
# and returns an array of badge messages

def assign_rooms(array)
    array.map.with_index { |item, index|
        "Hello, #{item}! You'll be assigned to room #{index + 1}!" }
end

def printer(array)
    a = batch_badge_creator(array)
    b = assign_rooms(array)
    a.each do |s|
        puts s
    end
    b.each do |s|
        puts s
    end
end

binding.pry
0