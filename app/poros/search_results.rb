class SearchResults
  def members(house)
    binding.pry
    json = PotterService.new.members_of_house(house)
    @members = json[:members].map do |member_info|
      Member.new(member_info)
    end
  end
end