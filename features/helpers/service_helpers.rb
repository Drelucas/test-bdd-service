module ServiceHelpers
  def jsonplaceholder
    @jsonplaceholder ||= Service::JSONPlaceholder.new
  end
end
