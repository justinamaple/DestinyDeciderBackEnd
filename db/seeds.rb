# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
List.destroy_all

u1 = User.create(email: 'justinamaple@gmail.com', password: 'asdf', token: '')
u2 = User.create(email: 'asdf@gmail.com', password: 'asdf', token: '')

l1 = List.create(name: 'Daddy Daycare', weapons:'{}')
l2 = List.create(name: '150 RPM Snipers', weapons:'{}')

j1 = UsersList.create(user: u1, list: l1)
j2 = UsersList.create(user: u1, list: l2)