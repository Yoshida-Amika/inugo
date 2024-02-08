# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 Admin.create!(
   email: "iii@iii",
   password: "iiiiii"
 )


Genre.create!(
  name: "宿泊施設"
  )

Genre.create!(
  name: "ショッピングモール"
  )

Genre.create!(
  name: "アクティビティ"
  )


 Shop.create!(
   genre_id: 1,
   name: "平野屋",
   postal_code: "443-0021",
   address: "愛知県蒲郡市三谷町南山1-21",
   telephone_number: "0533-68-5161",
 )
