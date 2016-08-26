def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |info, descriptor_hash|
    descriptor_hash.each do |descriptors, names|
      names.each do |name|
        if pigeon_list.key?(name)
          if pigeon_list[name].key?(info)
            pigeon_list[name][info] << descriptors.to_s
          else
            pigeon_list[name][info] = [descriptors.to_s]
          end
        else
          pigeon_list[name] = {info => [descriptors.to_s]}
        end
      end
    end
  end
  return pigeon_list
end
