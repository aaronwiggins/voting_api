# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

start_time = Time.now

how_many = 1000

parties = ["Democrat", "Republican", "Green", "Libertarian"]

how_many.times do |i|
  Candidate.create!(name: Faker::Name.name,
      hometown: Faker::Address.city,
      district: Faker::Address.city,
      party: parties.sample)
end

candidates = Candidate.all

how_many.times do
  v = Voter.create!(name: Faker::Name.name,
      party: parties.sample)
  Vote.create(voter_id: v.id,
          candidate_id: candidates.sample.id)

end
#
# voters = Voter.all
#
# how_many.times do
#   Vote.create(voter_id: voters.sample.id,
#       candidate_id: candidates.sample.id)
# end

puts "This took #{Time.now-start_time} seconds"
