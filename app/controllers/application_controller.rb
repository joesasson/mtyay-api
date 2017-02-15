class ApplicationController < ActionController::API

  def current_account
    token = request.headers['HTTP_AUTHORIZATION']
    if token
      account_info = Auth.decode(token)
      current_account ||= Account.find(account_info['account_id'])
    end
  end

  # def authorize!
  #   if !current_account
  #     redirect '/'
  #   end
  # end

end
