# Write your code here.
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    badges = []
    attendees.each do |name|
        badges.push(badge_maker(name))
    end
    badges
end

def assign_rooms(speakers)
    list = []
    speakers.each_with_index do |speaker, index|
        list.push("Hello, #{speaker}! You'll be assigned to room #{index+1}!")
    end
    return list
end

def printer(list)
    batch_badge_creator(list).each do |badge|
        puts badge
    end

    assign_rooms(list).each do |room|
        puts room 
    end
end
