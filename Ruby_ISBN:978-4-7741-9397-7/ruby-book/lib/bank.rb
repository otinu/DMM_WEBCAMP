require "./lib/deep_freezable"

class Bank
  extend DeepFreezable

  CURRENCIES = deep_freeze({ "Japan" => "yean", "US" => "dollar", "India" => "rupee"})
end