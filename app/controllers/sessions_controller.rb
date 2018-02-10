class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id


    session = GoogleDrive.login_with_oauth(request.env["omniauth.auth"].credentials.token)
    # ws = session.spreadsheet_by_url("https://docs.google.com/spreadsheets/d/1smypkyAz4STrKO4Zkos5Z4UPUJKvvgIza32LnlQ7OGw/edit").worksheets[0]
    #Gets content of A2 cell
    # p ws[2, 1]
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
