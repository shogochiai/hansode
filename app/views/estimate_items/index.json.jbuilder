json.array! @estimate_items do |item|
  json.set! :id, item.id
  json.set! :title, item.title
  json.set! :price, item.price
end
