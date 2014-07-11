# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first) 
  

  Beverage.destroy_all
  User.destroy_all

  #种子测试数据，部署到生产环境后务必改一下。
  User.create(email: "yort.feng@gmail.com", password: "12345678")
