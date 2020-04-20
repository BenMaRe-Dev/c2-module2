# frozen_string_literal: true

# You have a group chat application, but who is online!?
# You want to show your users which of their friends are online and available
# to chat!
#
# Given an input of an array of objects containing usernames,
# status and time since last activity (in mins), create a function to work out
# who is online, offline and away.
#
# If someone is online but their lastActivity was more than 10 minutes ago
# they are to be considered away.

def who_is_online(friends)
  result = { 'online' => [], 'offline' => [], 'away' => [] }
  friends.each do |friend|
    status = friend['status'] == 'online' && friend['last_activity'] > 10 ? 'away' : friend['status']
    result[status] << friend['username']
  end
  result.delete_if { |_k, v| v.empty? }
end

friends = [{ 'username' => 'David', 'status' => 'online', 'last_activity' => 10 },
           { 'username' => 'Lucy', 'status' => 'offline', 'last_activity' => 22 },
           { 'username' => 'Bob', 'status' => 'online', 'last_activity' => 104 }]
expected = { 'online' => ['David'], 'offline' => ['Lucy'], 'away' => ['Bob'] }
puts who_is_online(friends) == expected

friends = [{ 'username' => 'Lucy', 'status' => 'offline', 'last_activity' => 22 },
           { 'username' => 'Bob', 'status' => 'online', 'last_activity' => 104 }]
expected = { 'offline' => ['Lucy'], 'away' => ['Bob'] }
puts who_is_online(friends) == expected
