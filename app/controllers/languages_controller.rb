class LanguagesController < ApplicationController
  after_action :set_session_and_redirect

  def polish
    I18n.locale = :pl
  end

  def english
    I18n.locale = :en
  end

  private

  def set_session_and_redirect
    session[:locale] = I18n.locale
    redirect_to :back
  rescue ActionController::RedirectBackError
    redirect_to :root
  end
end
