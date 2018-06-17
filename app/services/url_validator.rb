require 'open-uri'

class UrlValidator
  def self.valid? url
    status = open(url).status
    return true if status[0].eql? "200"
    false
  end  
end