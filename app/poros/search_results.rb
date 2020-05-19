class SearchResults
  def members(house)
    json = PotterService.new.houses(house)
    # binding.pry
    @members = json["members"].map do |member_info|
      Member.new(member_info)
    end
  end
end