# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## アプリケーション名 Your Book

## このアプリは、本の紹介を中心として、本の情報を共有することに特化しています。ジャンルをクリックして、そのジャンルの本の一覧をチェックしたり、クレジット決済をすればチャットルームに入室して他のユーザーとよりディープな話題で盛り上がることができます。

## ログインに必要な情報
## password tomita820
## email abc@gmail.com
## user_name tomita

## 利用方法
## まず、新規登録またはログインをしましょう。その後、ヘッダー部分にある”本を紹介する”の部分から好きな本を紹介してください。その他、入室ボタンを押せば、クレジット決済のフォームに遷移しますので、お好みのプランにあった金額と、カード情報を入力していただくと、ルーム作成画面に遷移します。”プロフィール作を作成する”からはあなたのプロフィールを作成できます。

## 目指した課題解決
## このアプリは自分自身の、自分にあった本がなかなか見つからない。本の情報を共有できるような相手がなかなか見つからない。という経験を思い出し、読書が好きな人の中で自分と同じ気持ちを持っている人は多いのではないかと考えたことがきっかけです。
## 本を紹介する上で最初に思いつくのが、ブログです。しかし、ブログは沢山の文字で本を紹介できる反面、あまりコミュニケーションが活発ではありません。また、ツイッターはコミュニケーションの面では優れているかもしれませんが、打ち込める文字数がやや少なく、本の魅力を伝え切るには少し足りません。この両方を兼ね備えたアプリは私見では思い当たらなかったので、このアプリを制作しました。

## 要件定義
## 投稿機能 どんなジャンルの本なのか、本の感想など	自分の好きな本を誰かに紹介し、レスポンスをもらいたいというニーズに答えて	所用時間2時間 [![Image from Gyazo](https://i.gyazo.com/a1209771e8380763bf0734f308ce4231.gif)](https://gyazo.com/a1209771e8380763bf0734f308ce4231)

## ログイン機能	パスワード、emailを登録させる	ストーリーケースは特になし。アプリケーションの機能を拡張するための必須機能	所用時間2時間 

## コメント機能 他のユーザーの感想を確認するため（なお、全角48文字以降は...で省略されます）	所要時間３時間 

## プロフィール機能	ユーザーのプロフィール画面を作ることができる。その人がどんな本が好きなのか、また同じジャンルを好むユーザーが表示されるようにしたい	あるユーザーが自分と趣味が合うかどうか判断したいという要望を想定。	所要時間３時間（ほぼ済） [![Image from Gyazo](https://i.gyazo.com/112aa8c0ed8d2f47a636bedd359937b4.gif)](https://gyazo.com/112aa8c0ed8d2f47a636bedd359937b4)

## ジャンル検索	ジャンルを選ぶと該当する本が表示される。プルダウンでジャンルを選択させ、該当する書籍を表示する。あるジャンルに属する記事を素早く見つけたいという要望を想定。	所要時間3時間 [![Image from Gyazo](https://i.gyazo.com/b5e227ef3b826bdd681e9583f0b2665d.gif)](https://gyazo.com/b5e227ef3b826bdd681e9583f0b2665d)

## チャットルームシステム	ユーザー間の関係性を密にするため	クレジット決済の後、チャットルームにユーザーが入り、その中だけでの閉鎖的なコミュニケーションを楽しむ。コメント欄のような開かれた状態でなく、閉鎖的な空間で限られたメンバーと、よりディープな話で盛り上がりたいという要望を想定。	他のユーザーからチャット相手に選ばれた場合は、相手が作成したルーム（自分が作成していないのにルーム一覧に含まれているルーム）に入っていただければ他ユーザーとのチャットができます。所用３時間(ほぼ済)	 [![Image from Gyazo](https://i.gyazo.com/0dfe4455cbcded3dcb0b4059a2963690.gif)](https://gyazo.com/0dfe4455cbcded3dcb0b4059a2963690)  [![Image from Gyazo](https://i.gyazo.com/10038672f973ca99596f111c352acadd.gif)](https://gyazo.com/10038672f973ca99596f111c352acadd)

## いいね機能	投稿内容の評価の判断基準として実装。どんな投稿がバズるのかを数字で判断したい、投稿のモチベーションが上がる仕組みが欲しいという要望を想定。所用時間4時間（ほぼ済） [![Image from Gyazo](https://i.gyazo.com/78cfe6f6d92509a3ed87e2f88e58eafe.gif)](https://gyazo.com/78cfe6f6d92509a3ed87e2f88e58eafe)

## 実装予定の機能 

## 出品、購入機能	出品者以外の全ログインユーザーに商品を売るのではなく、出品者が購入者を特定して、特定されたユーザーだけが商品を買うことができるシステム	ただの新品の本よりも、自分と仲のいい誰かから受け取った本はモノとしての価値が高く、より上質な読書体験につながることを見込んでの機能。	
## チャット、チャットルーム、投稿のコメントの非同期通信
## ユーザーがより快適にアプリを利用できるよう、画面をリロードすることなくチャット、チャットルームの切り替え、コメントを行うようにしたい。今のところ挑戦したものの、自分の技術が伴わず実装することができていない

## その他、優先順位は低いが思いついた機能
## 課金コメント機能
## コメント（最低3０文字）するのに１００円がかかり、そこから50文字増えるたびに100円が加算される仕組み。最低限の言葉で、より意義のあるコメントをユーザーに促す機能
## いいね順での表示
## いいねが多い順に投稿が並ぶ機能
## "new"ルーム通知機能
## 他のユーザーからルームに招かれた場合(自分が作成したルームじゃないルームが立ち上がった場合、ルームの横に、"new"と表示されることで、誰かにルームに招かれたことを確認できる)
## 

## ER図
![book](https://user-images.githubusercontent.com/82786862/121147936-4c81b180-c87c-11eb-9212-8203c660c82d.png)

## ローカルでの操作方法
## まず、ブラウザの検索窓にlocalhost3000と打ち込みます。そのあと、header部分の新規登録からユーザーネームとパスワード、emailを打ち込んでください。（ユーザー名は最大８文字、パスワードは最低６文字の半角英数です）
## 投稿をするなら”本を紹介する”を、プロフィールの制作ならプロフィールを作成するなら”プロフィールの作成”をチャットルームへの入室は”入室”を、投稿の詳細画面に遷移するなら投稿物をクリック、いいねをするなら詳細画面のハートマークをクリック。コメントをするなら詳細画面のフォームにコメントを打ち込む。ジャンル別で投稿を閲覧したい場合は詳細ページ上部の”ジャンル：〜〜の作品をもっとみる”をクリックすると、そのジャンルに属する投稿が表示されます。
## チャットルームの入室、作成には、クレジット決済が必要となります。（あくまでテストですので、実際の金銭のやりとりはありません
## カード情報
## カード番号 4242424242424242 cvc 123  有効期限 登録時より未来
## 決済が完了しましたら、チャットルームの作成ができます。チャットルーム名とチャットするユーザーを選んでください。（一番最初のユーザーはチャットするユーザーがプルダウンに表示されませんので、空欄のまま入室してください） 入室できたら、画面左のチャットルーム名をクリックしてください。画面右下に投稿欄がありますので、そこから好きな文言を送信しましょう。

## users テーブル

| Column            | Type   | Options     |
| --------          | ------ | ----------- |

| email             | string | null: false,unique: true |
| encrypted_password| string | null: false |
| name              | string | null: false |

has_many :intros
has_many :comments

## intros テーブル
| Column            | Type      | Options     |
| --------          | ------    | ----------- |
| book              | text      | null: false |
| review            | text      | null: false |
| genre             |references | null: false,foreign_key: true|
| user              |references | null: false,foreign_key: true|

belongs_to :user
belongs_to :genre
has_many   :comments

## comments テーブル
| Column     | Type       | Options     |
| --------   | ------     | ----------- |
| comment    | text       | null: false |
| user       | references | null: false,foreign_key :true|
| intro      | references | null: false,foreign_key :true|

belongs_to :user
belongs_to :intro

## profiles
| Column     | Type       | Options    |
| --------   | ------     | -----------|
| hobby      | string     | null: false|
| favorite   | text       | null: false|
| comment    | text       | null: false|
| user       |references  | null: false|
foreign_key:true|

belongs_to :user

##  genres

| Column     | Type       | Options    |
| --------   | ------     | -----------|
| name       | text       | null:false |

has_many :intros

## likes

| Column     | Type       | Options    |
| --------   | ------     | -----------|
| user       | references | null:false |  foreign_key:true|
| intro      | references | null:false |
foreign_key:true|

belongs_to :user
belongs_to :intro

## rooms
| Column     | Type       | Options    |
| --------   | ------     | -----------|
| name       | string     | null:false |

has_many :user_rooms, dependent: :destroy
has_many :users, through: :user_rooms
has_many :messages, dependent: :destroy

## user_rooms
| Column     | Type       | Options    |
| --------   | ------     | -----------|
| user       | references | foreign_key,null:false |
| room       | references | foreign_key,null:false |

belongs_to :user
belongs_to :room

## messages
| Column     | Type       | Options    |
| --------   | ------     | -----------|
| content    | text       |
| null:false              |
| user       | references | null:false |
foreign_key:true|
| room       | references | null:false |
foreign_key:true|

belongs_to :room
belongs_to :user

## payment
| Column     | Type       | Options    |
| --------   | ------     | -----------|
| price      | integer    | null:false |
| user       |references  | null:false |
foreign_key:true|

belongs_to :user