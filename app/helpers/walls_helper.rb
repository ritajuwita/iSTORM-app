module WallsHelper
  def show_commenter(commenter_id, options = {})
    user = request_webservius('/API/user_info', {:user_id => commenter_id }).body unless commenter_id.blank?
    oauth = ActiveSupport::JSON.decode(user)["results"]
    first_name = oauth["first_name"]
    last_name = oauth["last_name"]
    user_name = first_name.titleize + ' ' +last_name.titleize + ' '
    options[:style].blank? ? (options[:style] = "font-weight:bold") : (options[:style] = options[:style])
    content_tag(:span, user_name, options) unless user_name.blank?
  end
end
