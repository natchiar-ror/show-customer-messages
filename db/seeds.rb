# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |i|
	Asset.create(asset_id: "At_#{i}",eff_dt: Time.now, html_string: "The text or view message for Asset1 goes here..", ver_nbr: 1, title: "TitleAsst_#{i}", description: "Description Asset_#{i}")
end

20.times do |j|
	Config.create(cust_id: j, loan_nbr: "loan_no_#{j}",actv_sts: "T",asset_id: j)
end