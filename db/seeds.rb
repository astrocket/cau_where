# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurant_list = %w(
    유정쌈밥
    뚝배기스파게티
    육쌈냉면
    맥도날드
)

restaurant_list.each do |title|
  Restaurant.create(title: title)
end

pub_list = %w(
    레드락
    봉구비어
    삼거리포차
    스파이키
    옹골진
    잠꾸러기
    장독대
    캐빈
    프렌즈
)

pub_list.each do |title|
  Pub.create(title: title)
end