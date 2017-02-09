json.array!(@shop_list) do |shop|
  json.title        shop.title
  json.type         shop.class.name
  json.url          "/cau?#{shop.model_name.param_key}_id=#{shop.id}"
end