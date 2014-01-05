class FakeTwitter
  def self.search(term)
  	OpenStruct.new(results: [])
  end
end