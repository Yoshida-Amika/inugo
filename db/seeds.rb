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

# 宿泊施設
 Shop.create!(
   name: "平野屋",
   postal_code: "443-0021",
   address: "愛知県蒲郡市三谷町南山1-21",
   telephone_number: "0533-68-5161",
   site_url: "https://www.hotel-hiranoya.co.jp/access/"
 )
 ShopGenre.create!(
  shop_id: 1,
  genre_id: 1
 )

 Shop.create!(
   name: "ヒルトン名古屋",
   postal_code: "460-0008",
   address: "愛知県名古屋市中区栄1-3-3",
   telephone_number: "052-212-1111",
   site_url: "https://nagoya.hiltonjapan.co.jp/"
 )
 ShopGenre.create!(
  shop_id: 2,
  genre_id: 1
 )

 Shop.create!(
   name: "ANAクラウンプラザホテルグランコート名古屋",
   postal_code: "460-0023",
   address: "愛知県名古屋市中区金山町1丁目1-1",
   telephone_number: "052-683-4111",
   site_url: "https://www.anacrowneplaza-nagoya.jp/"
 )
 ShopGenre.create!(
  shop_id: 3,
  genre_id: 1
 )

  Shop.create!(
   name: "菊の屋 はなれ",
   postal_code: "453-0016",
   address: "愛知県名古屋市中村区竹橋町32-4",
   telephone_number: "052-750-0722",
   site_url: "https://hanare.yado-kikunoya.com/"
 )
 ShopGenre.create!(
  shop_id: 4,
  genre_id: 1
 )

 Shop.create!(
   name: "天然温泉ホテルリブマックスPREMIUM名古屋丸の内",
   postal_code: "460-0002",
   address: "愛知県名古屋市中区丸の内3丁目16-22",
   telephone_number: "052-950-2800",
   site_url: "https://www.hotel-livemax.com/aichi/nagoya-marunouchi/"
 )
 ShopGenre.create!(
  shop_id: 5,
  genre_id: 1
 )

 Shop.create!(
   name: "東横イン 名古屋金山",
   postal_code: "460-0024",
   address: "愛知県名古屋市中区正木3-9-28",
   telephone_number: "052-339-1045",
   site_url: "https://www.toyoko-inn.com/search/detail/00328/"
 )
 ShopGenre.create!(
  shop_id: 6,
  genre_id: 1
 )

 Shop.create!(
   name: "ホテルリブマックス名古屋桜通口",
   postal_code: "451-0042",
   address: "愛知県名古屋市西区那古野2丁目26-4",
   telephone_number: "052-583-1170",
   site_url: "https://www.hotel-livemax.com/aichi/sakuradori/"
 )
 ShopGenre.create!(
  shop_id: 7,
  genre_id: 1
 )


# ショッピングモール
 Shop.create!(
   name: "星が丘テラス",
   postal_code: "464-0802",
   address: "愛知県名古屋市千種区星が丘元町16-50",
   telephone_number: "052-781-1266",
   site_url: "https://www.hoshigaoka-terrace.com/service/"
  )
  ShopGenre.create!(
   shop_id: 8,
   genre_id: 2
  )

  Shop.create!(
   name: "メイカーズピア",
   postal_code: "455-0848",
   address: "愛知県名古屋市港区金城ふ頭2丁目7-1",
   telephone_number: "052-304-8722",
   site_url: "https://www.makerspier.com/"
  )
  ShopGenre.create!(
   shop_id: 9,
   genre_id: 2
  )

  Shop.create!(
   name: "ラグーナフィスティバルマーケット",
   postal_code: "443-0014",
   address: "愛知県蒲郡市海陽町2丁目2番地",
   telephone_number: "0570-097117",
   site_url: "https://www.lagunatenbosch.co.jp/festival/"
  )
  ShopGenre.create!(
   shop_id: 10,
   genre_id: 2
  )

  # アクティビティ
  Shop.create!(
   name: "庄内緑地",
   postal_code: "452-0818",
   address: "愛知県名古屋市西区山田町大字上小田井字敷地3527",
   telephone_number: "052-503-1010",
   site_url: "https://shonai-ryokuchi.jp/"
  )
  ShopGenre.create!(
   shop_id:11,
   genre_id: 3
  )

  Shop.create!(
   name: "大高緑地",
   postal_code: "459-8001",
   address: "愛知県名古屋市緑区大高町字高山1-1",
   telephone_number: "052-622-2281",
   site_url: "https://www.aichi-koen.com/odaka/"
  )
  ShopGenre.create!(
   shop_id:12,
   genre_id: 3
  )

  Shop.create!(
   name: "新宝緑地",
   postal_code: "476-0005",
   address: "愛知県東海市新宝町",
   telephone_number: "052-661-4111",
   site_url: "http://shinporyokuchi-dogrun.org/terms.html"
  )
  ShopGenre.create!(
   shop_id:13,
   genre_id: 3
  )

  Shop.create!(
   name: "常滑りんくうビーチ",
   postal_code: "479-0882",
   address: "愛知県常滑市りんくう町2丁目　りんくうビーチ",
   telephone_number: "080-2632-7228",
   site_url: "https://rinku-beach.jp/"
  )
  ShopGenre.create!(
   shop_id:14,
   genre_id: 3
  )

  Shop.create!(
   name: "香嵐渓一の谷",
   postal_code: "444-2424",
   address: "愛知県豊田市足助町一の谷22",
   telephone_number: "0565-62-0508",
   site_url: "https://ichinotani1.com/"
  )
  ShopGenre.create!(
   shop_id:15,
   genre_id: 3
  )

  Shop.create!(
   name: "LATERRE ラテール Dogrun sora",
   postal_code: "441−3125",
   address: "愛知県豊橋市豊栄町字東298番1",
   telephone_number: "090-5005-3622",
   site_url: "https://laterre-k.com/"
  )
  ShopGenre.create!(
   shop_id:16,
   genre_id: 3
  )

  Shop.create!(
   name: "SKドッグラン",
   postal_code: "444-0413",
   address: "愛知県西尾市一色町坂田新田沖向13-5",
   telephone_number: "0563-72-7454",
   site_url: "https://sk-dog-run.business.site/"
  )
  ShopGenre.create!(
   shop_id:17,
   genre_id: 3
  )

  Shop.create!(
   name: "新舞子マリンパーク",
   postal_code: "478-0000",
   address: "愛知県知多市緑浜町2番地",
   telephone_number: "0562-56-3980",
   site_url: "http://www.marine-park.jp/dogrun/"
  )
  ShopGenre.create!(
   shop_id:18,
   genre_id: 3
  )

  Shop.create!(
   name: "香恋の館",
   postal_code: "444-3206",
   address: "愛知県豊田市羽布町鬼ノ平5番地",
   telephone_number: "0565-90-4120",
   site_url: "http://karennosato.com/"
  )
  ShopGenre.create!(
   shop_id:19,
   genre_id: 3
  )

  Shop.create!(
   name: "もっくる新城",
   postal_code: "441-1318",
   address: "愛知県新城市八束穂五反田329-7",
   telephone_number: "0536-24-3005",
   site_url: "http://mokkulu.jp/"
  )
  ShopGenre.create!(
   shop_id:20,
   genre_id: 3
  )








