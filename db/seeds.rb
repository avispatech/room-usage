# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shift.delete_all
Day.delete_all
Position.delete_all
Location.delete_all

current_date = Time.zone.today
finish_at = current_date + 3.months
loop do
  break if current_date > finish_at

  Day.create(starts_at: current_date)
  current_date += 1.day
end

room1 = Location.create(name: 'Room 1')
room2 = Location.create(name: 'Room 2')

(1..12).each do |i|
  Position.create(name: i.to_s.rjust(2, '0'), location: room1)
end
(1..3).each do |i|
  Position.create(name: i.to_s.rjust(2, '0'), location: room2)
end
