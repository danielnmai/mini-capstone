User.create!([
  {name: "Daniel", email: "daniel@gmail.com", password_digest: "$2a$10$yIOUd49jEzuqvyuCOGtxmezD6I2ObsQnDbBGxs/SWjTAphd0uOtlu", admin: true},
  {name: "Luna", email: "luna@gmail.com", password_digest: "$2a$10$QzZUSrJXKH2nfkYrDIj8R.zjW809li7rI3062SYB4MrtpIlbNbx2a", admin: false}
])

Supplier.create!([
  {name: "Apple", email: "supply@apple.com", phone: "800-295-2145"},
  {name: "Logitech", email: "supply@logitech.com", phone: "855-252-1235"},
  {name: "Ford", email: "sale@ford.com", phone: "899-992-2342"}
])

Order.create!([
  {user_id: 1, subtotal: 68.95, tax: 6.2055, total: 75.1555, completed: true},
  {user_id: 1, subtotal: 68.95, tax: 6.2055, total: 75.1555, completed: true},
  {user_id: 1, subtotal: 137.9, tax: 12.411, total: 150.311, completed: true},
  {user_id: 1, subtotal: 79980.0, tax: 7198.2, total: 87178.2, completed: true},
  {user_id: 1, subtotal: 25.0, tax: 2.25, total: 27.25, completed: true},
  {user_id: 1, subtotal: 49.75, tax: 4.4775, total: 54.2275, completed: true},
  {user_id: 1, subtotal: 275.8, tax: 24.822, total: 300.622, completed: true},
  {user_id: 1, subtotal: 275.8, tax: 24.822, total: 300.622, completed: true},
  {user_id: 1, subtotal: 275.8, tax: 24.822, total: 300.622, completed: true},
  {user_id: 1, subtotal: 39990.0, tax: 3599.1, total: 43589.1, completed: true},
  {user_id: 1, subtotal: 79980.0, tax: 7198.2, total: 87178.2, completed: true},
  {user_id: 1, subtotal: 159960.0, tax: 14396.4, total: 174356.4, completed: true},
  {user_id: 1, subtotal: 799800.0, tax: 71982.0, total: 871782.0, completed: true},
  {user_id: 1, subtotal: 360117.85, tax: 32410.6065, total: 392528.4565, completed: true},
  {user_id: 1, subtotal: 2.0, tax: 0.18, total: 2.18, completed: true},
  {user_id: 1, subtotal: 137.9, tax: 12.411, total: 150.311, completed: true},
  {user_id: 1, subtotal: 79980.0, tax: 7198.2, total: 87178.2, completed: true},
  {user_id: 1, subtotal: 17.0, tax: 1.53, total: 18.53, completed: true},
  {user_id: 1, subtotal: 5.0, tax: 0.45, total: 5.45, completed: true},
  {user_id: 1, subtotal: 137.9, tax: 12.411, total: 150.311, completed: true},
  {user_id: 1, subtotal: 137.9, tax: 12.411, total: 150.311, completed: true},
  {user_id: 1, subtotal: 1.0, tax: 0.09, total: 1.09, completed: true},
  {user_id: 1, subtotal: 79.99, tax: 7.1991, total: 87.1891, completed: true},
  {user_id: 1, subtotal: 79.99, tax: 7.1991, total: 87.1891, completed: true},
  {user_id: 1, subtotal: 1.0, tax: 0.09, total: 1.09, completed: true},
  {user_id: 1, subtotal: 68.95, tax: 6.2055, total: 75.1555, completed: true},
  {user_id: 2, subtotal: 1379.0, tax: 124.11, total: 1503.11, completed: true},
  {user_id: 2, subtotal: 1479.0, tax: 133.11, total: 1612.11, completed: true},
  {user_id: 2, subtotal: 0.0, tax: 0.0, total: 0.0, completed: true},
  {user_id: 2, subtotal: 0.0, tax: 0.0, total: 0.0, completed: true},
  {user_id: 2, subtotal: 0.0, tax: 0.0, total: 0.0, completed: true},
  {user_id: 2, subtotal: nil, tax: nil, total: nil, completed: false},
  {user_id: 1, subtotal: 24.0, tax: 2.16, total: 26.16, completed: true},
  {user_id: 1, subtotal: 39990.0, tax: 3599.1, total: 43589.1, completed: true}
])
Product.create!([
  {name: "Mechanical Keyboard", origin: "USA", category: "Computer Parts", price: "68.95", description: "This is a keyboard.", image: "http://images.pcworld.com/images/article/2011/09/1121275_606-5221551.jpg", stock_status: true, supplier_id: 2},
  {name: "Macbook Air 2015", origin: "China", category: "Electronics", price: "1.0", description: "Designed by Apple. Made in China", image: "https://cdn.macrumors.com/article-new/2014/11/macbook_air_yosemite-800x450.jpg", stock_status: true, supplier_id: 1},
  {name: "Arrowhead Sparkling Water", origin: "USA", category: nil, price: "9.95", description: "Water Bottles", image: "https://images-na.ssl-images-amazon.com/images/I/51XtBi9MLvL.jpg", stock_status: true, supplier_id: 2},
  {name: "Tatsumi Ping Pong balls", origin: "China", category: "Sport Goods", price: "8.95", description: "Very high quality. Made in China", image: "http://jonathanfongstyle.com/wp-content/uploads/2014/11/pingpong1.jpg", stock_status: true, supplier_id: 1},
  {name: "Palio Master 2", origin: "China", category: nil, price: "44.95", description: "A very well made ping pong paddle", image: "http://www.pingpongstandard.com/wp-content/uploads/2016/07/03.jpg", stock_status: true, supplier_id: 1},
  {name: "Efluky Mini USB 3 Speeds Rechargeable Portable Table Fan, 4.5-Inch, Black", origin: "China", category: nil, price: "14.99", description: "Three-speed design provides you more choices in different temperature environment.", image: "https://images-na.ssl-images-amazon.com/images/I/71zQbEbNlNL._SY355_.jpg", stock_status: true, supplier_id: 1},
  {name: "Apple Mouse 2", origin: "China", category: nil, price: "79.99", description: "A mouse made by Apple", image: "https://images-na.ssl-images-amazon.com/images/I/71zQbEbNlNL._SY355_.jpg", stock_status: true, supplier_id: 1},
  {name: "EcoBoost Ford Mustang", origin: "USA", category: nil, price: "39990.0", description: "Nothing to say about this beast. ", image: "http://www.ford.com/cmslibs/content/dam/vdm_ford/live/en_us/ford/nameplate/mustang/2017/collections/highlights/3-2/mst17_highlight_lg_design.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg", stock_status: true, supplier_id: 3}
])



CartedProduct.create!([
  {product_id: 3, order_id: 26, quantity: 4},
  {product_id: 20, order_id: 29, quantity: 1},
  {product_id: 20, order_id: 30, quantity: 2},
  {product_id: 20, order_id: 31, quantity: 4},
  {product_id: 20, order_id: 32, quantity: 20},
  {product_id: 20, order_id: 33, quantity: 9},
  {product_id: 3, order_id: 33, quantity: 2},
  {product_id: 2, order_id: 33, quantity: 1},
  {product_id: 3, order_id: 33, quantity: 1},
  {product_id: 2, order_id: 34, quantity: 2},
  {product_id: 3, order_id: 35, quantity: 2},
  {product_id: 20, order_id: 36, quantity: 2},
  {product_id: 2, order_id: 37, quantity: 15},
  {product_id: 2, order_id: 37, quantity: 2},
  {product_id: 2, order_id: 38, quantity: 5},
  {product_id: 2, order_id: 38, quantity: 0},
  {product_id: 3, order_id: 39, quantity: 2},
  {product_id: 3, order_id: 40, quantity: 2},
  {product_id: 2, order_id: 41, quantity: 1},
  {product_id: 22, order_id: 42, quantity: 1},
  {product_id: 22, order_id: 43, quantity: 1},
  {product_id: 2, order_id: 44, quantity: 1},
  {product_id: 3, order_id: 45, quantity: 1},
  {product_id: 3, order_id: 47, quantity: 20},
  {product_id: 2, order_id: 48, quantity: 100}
])
Category.create!([
  {title: "Sport Goods"},
  {title: "Electronics"}
])
CategoryProduct.create!([
  {product_id: 1, category_id: 1},
  {product_id: 4, category_id: 1}
])
Image.create!([
  {url: "https://cdn.macrumors.com/article-new/2014/11/macbook_air_yosemite-800x450.jpg", product_id: 2},
  {url: "http://jonathanfongstyle.com/wp-content/uploads/2014/11/pingpong1.jpg", product_id: 1},
  {url: "http://images.pcworld.com/images/article/2011/09/1121275_606-5221551.jpg", product_id: 3},
  {url: "http://www.pingpongstandard.com/wp-content/uploads/2016/07/03.jpg", product_id: 4},
  {url: "http://www.ford.com/cmslibs/content/dam/vdm_ford/live/en_us/ford/nameplate/mustang/2017/collections/highlights/3-2/mst17_highlight_lg_design.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg", product_id: 20},
  {url: "https://images-na.ssl-images-amazon.com/images/I/51XtBi9MLvL.jpg", product_id: 21},
  {url: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/m/ac/macbook/air/macbook-air-gallery4-2014?wid=1292&hei=766&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=1476303776429", product_id: 2},
  {url: "http://g-ecx.images-amazon.com/images/G/31/aplusautomation/vendorimages/e55f67bd-11e2-464c-9df5-b6394f37ce11.jpg._CB270920720_.jpg", product_id: 2},
  {url: "https://i.ytimg.com/vi/RvW_C86uu50/maxresdefault.jpg", product_id: 4},
  {url: "https://i.ytimg.com/vi/qn6fz_6_fcw/maxresdefault.jpg", product_id: 22},
  {url: "http://o.aolcdn.com/dims-global/dims3/GLOB/legacy_thumbnail/750x422/quality/95/http://www.blogcdn.com/slideshows/images/slides/191/248/2/S1912482/slug/l/03-2015-ford-mustang-1.jpg", product_id: 20},
  {url: "http://o.aolcdn.com/dims-global/dims3/GLOB/legacy_thumbnail/750x422/quality/95/http://www.blogcdn.com/slideshows/images/slides/191/248/4/S1912484/slug/l/05-2015-ford-mustang-1.jpg", product_id: 20},
  {url: "https://images-na.ssl-images-amazon.com/images/I/71zQbEbNlNL._SY355_.jpg", product_id: 23}
])



