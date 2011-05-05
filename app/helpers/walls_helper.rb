module WallsHelper
  def show_commenter(commenter_id)
    user = request_webservius('/API/user_info', {:user_id => commenter_id }).body unless commenter_id.blank?
    oauth = ActiveSupport::JSON.decode(user)["results"]
    first_name = oauth["first_name"]
    last_name = oauth["last_name"]
    (first_name + '' +last_name).titleize
  end
end
