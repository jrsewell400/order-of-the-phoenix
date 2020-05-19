class SearchResults
  def members(house)
    house = PotterService.new.get_house_info(house)
    @members = house.first["members"].map do |member_info|
      Member.new(member_info)
    end
  end
end