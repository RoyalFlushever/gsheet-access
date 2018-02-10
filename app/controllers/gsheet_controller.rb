class GsheetController < ApplicationController
  
  def read
    require 'googleauth'
    require 'google_drive'
    session = GoogleDrive:Session.from_access_token(:user_id)
    # First worksheet of
    # https://docs.google.com/spreadsheet/ccc?key=pz7XtlQC-PYx-jrVMJErTcg
    # Or https://docs.google.com/a/someone.com/spreadsheets/d/pz7XtlQC-PYx-jrVMJErTcg/edit?usp=drive_web
    ws = session.spreadsheet_by_key("pz7XtlQC-PYx-jrVMJErTcg").worksheets[0]

    #Gets content of A2 cell
    p ws[2, 1]

  end

  def write

  end
end
