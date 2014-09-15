require 'ERB'

def page_title
  # title = I18n.t(:company) #Set site title here
  data.page.title
  
  # ttl = "#{data.page.title}"
  # begin
  #   newttl = "#{eval(data.page.title)}"
  #   ttl = newttl
  # rescue Exception => exc
  #   ttl = "#{data.page.title}"
  # end
  
  # # puts "ttl #{ttl.length}"

  # if ttl.length > 0
  #   title = ttl# I18n.t(data.page.title)
  # end

  # title
end

def page_description
  description = "A Static Site Generator" # Set site description here

  if data.page.description
    description = data.page.description
  end

  description
end

def page_keywords
  keywords = [] # Set site keywords here

  if data.page.keywords
    keywords.concat(dat.page.keywords)
  end

  keywords.uniq.join(", ")
end

def partners
  puts "#{Pathname(@app.root)}"
end

def localized_path (name)
  return "/#{I18n.locale}/#{name}.html"
end
