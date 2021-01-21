require 'pry'
def nyc_pigeon_organizer(data)
  list = data.each_with_object({}) do |(key, value), list|
    value.each do |inner_key, names|
      names.each do |name|
        if !list[name]
          list[name] = {}
        end
        if !list[name][key]
          list[name][key] = []
        end
      list[name][key].push(inner_key.to_s)
      end
    end
  end
  list
end
