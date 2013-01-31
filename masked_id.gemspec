Gem::Specification.new do |s|
  s.name          = "masked_id"
  s.version       = "0.0.3"
  s.authors       = ["William Basmayor"]
  s.email         = ["wbasmayor@gmail.com"]
  s.summary       = %q{Unique ID masking by class.}
  s.description   = %q{Masks the original ID of a class with a unique obfuscated value per object type.} 
  s.files         = ["lib/masked_id.rb", "lib/masked_id/baffler.rb", "lib/masked_id/scatter_swap.rb"]
  s.require_paths = ["lib"]
end
