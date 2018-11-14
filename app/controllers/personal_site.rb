require 'rack'

class PersonalSite
  def self.call(env)
    case env["PATH_INFO"]
    when '/' then index
    when '/about' then about
    else
      error
    end
  end

  def self.index
    ['200', {'Content-Type' => 'text/html'}, [File.read('./app/views/index.html')]]
  end

  def self.about
    ['200', {'Content-Type' => 'text/html'}, [File.read('./app/views/about.html')]]
  end

  def self.error
    ['404', {'Content-Type' => 'text/html'}, [File.read('./app/views/error.html')]]
  end
end
