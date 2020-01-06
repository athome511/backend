# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(:u_name => 'hogehoge', :u_mail => 'at_home@gmail.com', :u_password => 'kanekohijiri', :u_icon => "https://i.imgur.com/p4HZC8e.jpeg", :u_month_bc => 2, :u_total_bc => 10)
User.create(:u_name => 'hogehoge2', :u_mail => 'at_home2@gmail.com', :u_password => 'kanekohijiri2', :u_icon => "https://i.imgur.com/vaJud5Eg.jpg", :u_month_bc => 5, :u_total_bc => 20)

Cloth.create(:c_u_id => 1, :c_link => "https://i.imgur.com/p4HZC8e.jpeg")
Cloth.create(:c_u_id => 1, :c_link => "https://i.imgur.com/vaJud5Eg.jpg")
Cloth.create(:c_u_id => 2, :c_link => "https://i.imgur.com/p4HZC8e.jpeg")

Request.create(:r_title => '天気がいいね', :r_memo => '最近暖かくなりましたが，夜は冷えます．肌寒さにも対応できる服装をお願いします^^', :r_limit => '2019-12-20 12:00.00', :is_selected_bc => 0, :r_u_id => 1)
Request.create(:r_title => '山に芝刈りに行きます', :r_memo => 'p.s.おばあさんは川に桃を取りに行きました', :r_limit => '2020-05-20 12:00.00', :is_selected_bc => 0, :r_u_id => 1)
Request.create(:r_title => 'あいうえお', :r_memo => 'かきくけこ', :r_limit => '2020-05-20 12:00.00', :is_selected_bc => 0, :r_u_id => 2)

Proposal.create(:p_pc_text => "https://i.imgur.com/p4HZC8e.jpeg^https://i.imgur.com/vaJud5Eg.jpg", :p_memo => '桃太郎は生まれましたか?', :p_u_id => 2, :p_r_id => 2, :p_bc => 'NULL')
Proposal.create(:p_pc_text => "https://i.imgur.com/p4HZC8e.jpeg", :p_memo => 'NULL', :p_u_id => 1, :p_r_id => 1, :p_bc => 1)

Advertisement.create(:a_image_link => "https://i.imgur.com/vaJud5Eg.jpg", :a_link => "https://i.imgur.com/p4HZC8e.jpeg")
