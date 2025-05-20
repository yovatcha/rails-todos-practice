# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Clear existing data to ensure idempotency
puts "Clearing existing quests..."
Quest.destroy_all

# Create a set of initial quests
puts "Creating quests..."

quests = [
  { name: "Complete Ruby Basics Tutorial", status: true },
  { name: "Build a Simple CLI Application", status: true },
  { name: "Learn Rails MVC Architecture", status: true },
  { name: "Create First Rails Application", status: true },
  { name: "Implement User Authentication", status: false },
  { name: "Add API Endpoints", status: false },
  { name: "Write Test Suite", status: false },
  { name: "Deploy to Production", status: false },
  { name: "Optimize Database Queries", status: false },
  { name: "Implement Real-time Features", status: false }
]

quests.each do |quest_data|
  quest = Quest.create!(quest_data)
  puts "Created quest: #{quest.name} (Status: #{quest.status ? 'Completed' : 'Incomplete'})"
end

puts "Seed completed: Created #{Quest.count} quests"