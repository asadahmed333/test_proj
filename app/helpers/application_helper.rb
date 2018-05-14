module ApplicationHelper

  def gravatar_for(user)
gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}"
image_tag(gravatar_url, alt: user.username, class: "img-circle")

  end
end
