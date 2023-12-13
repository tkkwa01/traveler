# Ruby on Rails 勉強メモ
基本的にこの本を参考に勉強した。
https://zenn.dev/odentravel/books/e69a157daeecb3

## 詰まったところ
### Delete
deleteがうまくいかなかった。本では以下のようになっているところ(views/posts/show.html.erb)を、
```html
<%= link_to '削除する', post_path(@post.id),method: :delete, "data-confirm"=>"本当に消しますか？" %><br>
```
以下のように修正した。
```html
<%= link_to '削除する', post_path(@post.id), data:{turbo_method: :delete, turbo_confirm:'本当に消しますか?'} %><br>
```
Railsのバージョンが7になってturboの仕様が変わったことが原因だった。
> Ruby on Rails 7では、rails-ujsが標準構成から外れ、Turboが標準構成に入りました。  
(参考 https://picolab.dev/2022/03/23/rails7-turbo/)

### Refile（画像投稿）
本で以下のようになっているところ(views/posts/new.html.erb)を、
```html
<h4>画像</h4>
    <%= f.attachment_field :image %>
 <p></p>
```
以下のように修正した。
```html
  <h4>画像</h4>
  &nbsp; &nbsp; <%= f.file_field :image %>
  <p></p>
```
これもバージョンの差によるものらしい。  
>(参考 https://tech.fundasta.co.jp/2022/07/28/k_kano/679)