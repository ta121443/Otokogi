class StaticPagesController < ApplicationController

  def home
    @session_id = SecureRandom.urlsafe_base64
  end

end
