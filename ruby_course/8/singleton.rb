class Configuration
  def initialize
    @keys = {}
  end

  def set(key, value)
    @keys[key] = value
  end

  def get(key)
    @keys[key]
  end

  # wzorzec singleton -> tylko 1 obiekt, dostęp z wielu miejsc na raz
  def self.instance
    @instance ||= Configuration.new
  end
end

def get_url
  Configuration.instance.get("url")
end

configuration = Configuration.instance
configuration.set("url", "http://google.pl")

puts configuration.get("url")
puts get_url
