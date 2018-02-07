module UsersHelper
  def user_role_options
    [['Admin', 0], ['Worker', 1]]
  end

  def resolve_user_role_id(user_role)
    map = { admin: 0, worker: 1 }
    map[user_role.to_sym]
  end
end
