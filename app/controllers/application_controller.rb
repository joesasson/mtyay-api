class ApplicationController < ActionController::API

  def current_account
    token = request.headers['HTTP_AUTHORIZATION']
    if token
      account_info = Auth.decode(token)
      current_account ||= Account.find(account_info['account_id'])
    end
  end

  def is_current_account?
    params[:id].to_i == current_account.id
  end

  def is_connection?
    # @viewed_profile = Profile.find(params[:id])
    # @viewed_profile_commutes = @viewed_profile.commute_ids
    # @approved_connections = Connection.all_by_profile_id(@viewed_profile.id).approved
    # @shared_commutes = @approved_connections.where(requester_commute_id: @viewed_profile_commutes).or(@approved_connections.where(requestee_commute_id: @viewed_profile_commutes))
    # binding.pry
    # @shared_commutes.empty?
    true
  end

  def current_profile
    current_account.profile
  end

  # def authorize!
  #   if !current_account
  #     redirect '/'
  #   end
  # end

end
