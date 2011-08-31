module ApplicationHelper
  def user_nav
    content = if user_signed_in?
      "Signed in as #{current_user.email}. " +
      link_to('Not you?', destroy_user_session_path, :method => :delete)
    else
      content_tag(:div, :id => 'sign-up') do
        link_to 'Sign up', new_user_registration_path
      end + 
      content_tag(:div, :id => 'sign-in') do
        link_to 'Sign in', new_user_session_path
      end
    end
    content_tag(:section, content, { :id => 'user-nav' }, false)
  end
end
