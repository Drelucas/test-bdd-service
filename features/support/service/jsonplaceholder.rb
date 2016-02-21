module Service
  class JSONPlaceholder < Generic
    def post(userid, title, body)
      HTTParty.post("#{Settings.url}/posts", 
                    :body => {:userId => userid, 
                    :title => title, 
                    :body => body})
    end

    def put(postid, userid, title, body)
      HTTParty.put("#{Settings.url}/posts/#{postid}", 
                    :body => {:userId => userid, 
                    :title => title, 
                    :body => body})
    end

    def get(url)
      HTTParty.get("#{Settings.url}/#{url}")
    end

    def delete_post(id)
      HTTParty.delete("#{Settings.url}/posts/#{id}")
    end
  end
end
