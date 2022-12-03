# frozen_string_literal: true

# Copyright (c) 2008-2013 Michael Dvorkin and contributors.
#
# Fat Free CRM is freely distributable under the terms of MIT license.
# See MIT-LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
class SessionsController < Devise::SessionsController
  respond_to :html
  append_view_path 'app/views/devise'
  # skip_before_action :verify_authenticity_token

  def after_sign_out_path_for(*)
    new_user_session_path
  end


  def after_sign_in_path_for(resource_or_scope)
    # debugger
    stored_location_for(resource_or_scope) || root_path
  end
end
