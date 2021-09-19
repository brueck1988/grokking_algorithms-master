
#Solution using an array in lieu of a queue
def person_is_seller(name)
  name[-1] == 'm' #Assume mango sellers' names end in m
end

def search(name)
  graph = {}
  graph["you"] = ["alice", "bob", "claire"]
  graph["bob"] = ["anuj", "peggy"]
  graph["alice"] = ["peggy"]
  graph["claire"] = ["jones", "jonny"]
  graph["anuj"] = []
  graph["peggy"] = []
  graph["jones"] = ["thomas"]
  graph["jonny"] = ["tim"]
  graph["thomas"] = []
  graph["tim"] = []
  search_queue = []
  #add friends to queue
  search_queue += graph[name]
  # This array is how you keep track of which people you've searched before.
  searched = []
  while !search_queue.empty?
    person = search_queue.shift
    # Only search this person if you haven't already searched them.
    if !searched.include?(person)
      if person_is_seller(person)
        print "#{person} is a mango seller!"
        return true
      else
        #add friends to queue
        search_queue += graph[person]
      end
      # Marks this person as searched
      searched << person
    end
  end
  print "There are no mango sellers"
  return false
end

search("you")







#Solution using queue
# def search(name)
#   graph = {}
#   graph["you"] = ["alice", "bob", "claire"]
#   graph["bob"] = ["anuj", "peggy"]
#   graph["alice"] = ["peggy"]
#   graph["claire"] = ["jones", "jonny"]
#   graph["anuj"] = []
#   graph["peggy"] = []
#   graph["jones"] = ["thomas"]
#   graph["jonny"] = ["tim"]
#   search_queue = Queue.new
#   #add friends to queue
#   graph[name].each do |friend|
#     search_queue << friend
#   end
#   # This array is how you keep track of which people you've searched before.
#   searched = []
#   while search_queue
#     person = search_queue.pop
#     # Only search this person if you haven't already searched them.
#     if !searched.include?(person)
#       if person[-1] == 'm'
#         print "#{person} is a mango seller!"
#         return true
#       else
#         #add friends to queue
#         if graph[person] != nil
#           graph[person].each do |friend|
#             search_queue << friend
#           end
#         end
#         # Marks this person as searched
#         searched << person
#       end
#     end
#   end
#   search_queue.close
#   return false
# end
# 
# search("you")
