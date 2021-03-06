# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def get_image(params = {})
    unless params["candidate_profile_id"].blank?
      oauth = request_webservius('/API/user_info', {:candidate_profile_id => params['candidate_profile_id'] }).body
    else
      oauth = request_webservius('/API/user_info', {:user_id => params["user_id"] }).body unless params["user_id"].blank?
    end
   candidate_photo = ActiveSupport::JSON.decode(oauth)["results"]["photo"]
   candidate_photo.blank? ? '/images/avatar-50.png' : candidate_photo
  end

  def show_badges(user_id, style=nil)
    response = request_webservius('/API/show_badges', {:user_id => user_id }).body
    link = ActiveSupport::JSON.decode(response)["results"]["link"]
    image_tag link || '', :alt=>"avatar", :class=>"badge", :style => style
  end

  def timeago(time, options = {})
    options[:class] ||= "wallTime"
    options[:style].blank? ? (options[:style] = "color: grey") : (options[:style] = options[:style])
    content_tag(:span, time.to_s, options.merge({:title => time.getutc.iso8601, })) if time
  end
end
