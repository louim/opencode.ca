class Talk < YamlRecord::Base
  # Source
  source File.expand_path('../../../data/talks',  __FILE__)

  # Properties
  properties :title, :author_name, :author_screenname, :slides_url, :code_url, :edition_id, :author_url, :author_picture_url

  # Custom methods
  def author_picture_url
    self.attributes[:author_picture_url] ||= "http://twitter.com/api/users/profile_image/#{self.author_screenname}"
  end

  def author_url
    self.attributes[:author_url] ||= "http://twitter.com/#{self.author_screenname}"
  end
end
