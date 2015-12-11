# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
%w(and dna dan nda).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
   User.create!(email: write@me.com, password: 'abc123',
               password_confirmation: 'abc123')
end


one = Entry.create!(title: 'Tuesday', jpost: "I truely hope that this upcoming Tuesday is not a repeate of the last project week.  It sets up a stressful Wednesday.")

end
