class Searcher
# Active Support allows us to declares a class-level attribute
# whose value is inheritable by sub-classes,
# and the sub-classes can change values without impacting the parent class.
# Setting the default to Twitter, the spec should still run
  class_attribute :searcher
  self.searcher = Twitter

# This will immediately run the search and cache it
  attr_reader :results

  def initialize(search_term)
  	@results = searcher.search(search_term).results
  end
end

