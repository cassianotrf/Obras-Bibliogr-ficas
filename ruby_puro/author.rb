class Author

  def format_names(names_total, names)
    if names_total == names.size
      array_surename = ['FILHO', 'FILHA', 'NETO', 'NETA', "SOBRINHO", 'SOBRINHA', 'JUNIOR']
      array_names = []

      names.each do |name|
        splited_name = name.split
        if splited_name.size < 2
          array_names.push(splited_name.first.upcase)
        elsif splited_name.size == 2
          array_names.push("#{splited_name.last.upcase}, #{splited_name.first.capitalize}")
        else
          parts_name = ''
          if array_surename.include?(splited_name.last.upcase)
            limit = splited_name.length - 2
            (0...limit).each do |i|
              parts_name +=  "#{splited_name[i].capitalize} "
            end
            array_names.push("#{splited_name[1].upcase} #{splited_name.last.upcase}, #{parts_name.strip}")
          else
            limit = splited_name.length - 1
            (0...limit).each do |i|
              if verify_word(splited_name[i])
                parts_name +=  "#{splited_name[i]} "
              else
                parts_name +=  "#{splited_name[i].capitalize} "
              end
            end
            array_names.push("#{splited_name.last.upcase}, #{parts_name.strip}")
          end
        end
      end
      return array_names
    else
      raise 'The number of names must be equal to the numbers names'
    end
  end
  def verify_word(name)
    name.upcase == 'DA' || name.upcase == 'DAS' || name.upcase == 'DE' || name.upcase == 'DO' || name.upcase == 'DAS'
  end
end

