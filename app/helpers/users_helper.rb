module UsersHelper
    def id_user(user)
        user.name.downcase.tr(" ", "_")
    end
    
    def pluralizer(count, string)
      "#{count} #{string.pluralize(count)}"
    end

    def gravatar_for(user, size: 80)
      #an MD5 hash algorithm (implemented using the 'hexdigest' method [part of the Digest library]) converts the email into an MD5 hash (case-sensitive)
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
      image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end

end
