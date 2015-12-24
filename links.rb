links = []

File.open('page_source.html').read.each_line { |line| 
    if line.include? "data-permalink-path"
        links << line[/#{'"'}(.*?)#{'"'}/m, 1]
    end
}

puts links.length
