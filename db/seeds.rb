# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Employee.delete_all
Employee.create!(name: 'Dave Chmura',
  biography:
    %{<p>
      <em>Dave Chmura</em> Dave did a lot for everyone, and was well known for making
      the best hamburgers and cheeseburgers in all of Michigan. He additionally was very
      good at baseball.
      </p>},
  profile_pic_url: 'schubert.jpg')
# . . .
Employee.create!(name: 'Debbie Shih',
  biography:
    %{<p>
      <em>Debbie Shih</em>
      Debbie is a student at the University of Michigan, studying for a degree in 
      Computer Science. This was unfortunately cut short after she got turned into a bear.
      </p>},
  profile_pic_url: 'hank.jpg')
# . . .

Employee.create!(name: 'Henry Teng',
  biography:
    %{<p>
      <em>Henry</em>
      Henry Teng was also studying for Computer Science, but touched a cursed object and was turned into an odd Han dynasty
      era piece of metalwork.
      </p>},
  profile_pic_url: 'huh.jpg')