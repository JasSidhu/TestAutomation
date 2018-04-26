require_relative 'page'

class Global < Page

  # header
  #HEADER_LOCATOR = { id: 'header' }

  # social
  #FACEBOOK_LINK_LOCATOR = { link: 'facebook' }


  def ui_elements
    #yield HEADER_LOCATOR
  end

  def submit_search_term(keyword)

  end

  def click_social_icon_from_header(channel)
    case channel
      when 'facebook'
        #click_within HEADER_LOCATOR, FACEBOOK_LINK_LOCATOR
      end
  end
end # Global
