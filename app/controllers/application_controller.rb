class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # 以下を追記
  before_action :configure_permitted_parameters, if: :devise_controller?

  # nicknameをログイン時に使用する
  # deviseに関するストロングパラメータを設定
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
  # ここまで追記
end
