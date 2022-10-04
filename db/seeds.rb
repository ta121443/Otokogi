session_id = "XNu8mS0zq7tMrFY5ncrGZg"
4.times do |n|
  Group.create!(
    name: "#{n+1}年",
    session_id: session_id
  )  
end

4.times do |n|
  User.create!(
    name: "#{n+1}年生",
    session_id: session_id,
    group_id: n+1
  )
end

User.create!(
  name: "社会人",
  session_id: session_id,
  group_id: nil
)