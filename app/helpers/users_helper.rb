require 'digest/md5'

module UsersHelper
  def gravatar_for(user)
    email_address = user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)

    # compile URL which can be used in <img src="RIGHT_HERE"...
    image_src = "https://www.gravatar.com/avatar/#{hash}"
  end
end
