module UsersHelper
	def avatar_for(user, options = { size: 50 })
		avatar_id = Digest::MD5::hexdigest(user.email)
		size = options[:size]
		avatar_url = "https://secure.gravatar.com/avatar/#{avatar_id}?s=#{size}"
		image_tag(avatar_url, alt: user.name, class: "gravatar")
	end
end
