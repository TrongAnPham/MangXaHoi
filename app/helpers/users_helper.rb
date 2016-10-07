module UsersHelper
	def avatar_for(user)
		avatar_id = Digest::MD5::hexdigest(user.email)
		avatar_url = "https://secure.gravatar.com/avatar/#{avatar_id}"
		image_tag(avatar_url, alt: user.name, class: "gravatar")
  end
end
