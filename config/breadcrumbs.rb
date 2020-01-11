crumb :root do
  link "メルカリ", root_path
end

crumb :mypage do
  link "マイページ", users_mypage_path
end

crumb :notice do
  link "お知らせ", users_mypage_notice_path
  parent :mypage
end

crumb :to_do do
  link "やることリスト", users_mypage_to_do_path
  parent :mypage
end

crumb :nice do
  link "いいね！一覧", users_mypage_nice_path
  parent :mypage
end

crumb :selling do
  link "出品した商品 - 出品中", users_mypage_selling_path
  parent :mypage
end

crumb :transacting do
  link "出品した商品 - 取引中", users_mypage_transacting_path
  parent :mypage
end

crumb :sold do
  link "出品した商品 - 売却済み", users_mypage_sold_path
  parent :mypage
end

crumb :buy_transacting do
  link "購入した商品 - 取引中", users_mypage_buy_products_transacting_path
  parent :mypage
end

crumb :buy_transacted do
  link "購入した商品 - 過去の取引", users_mypage_buy_products_transacted_path
  parent :mypage
end

crumb :news do
  link "ニュース一覧", users_mypage_news_path
  parent :mypage
end

crumb :profile do
  link "プロフィール", users_mypage_profile_path
  parent :mypage
end

crumb :card do
  link "支払い方法", users_mypage_card_path
  parent :mypage
end

crumb :identification do
  link "本人情報の登録", users_mypage_identification_path
  parent :mypage
end

crumb :logout do
  link "ログアウト", logout_path
  parent :mypage
end


# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).