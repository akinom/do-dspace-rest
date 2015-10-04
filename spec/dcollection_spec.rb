require "connect"
require "lister_example"
require "byid_example"
require "crud_example"
require "has_many_example"

RSpec.describe DSpace::Rest::DCollection do
  include_examples "listers"
  include_examples "byid"
  include_examples "has_many", "items"

  include_examples "crud"
end

