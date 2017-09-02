module SesionesHelper

    # Logs in the given user.
  def log_in(usuario)
    session[:user_id] = usuario.id
  end


  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= Usuario.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
