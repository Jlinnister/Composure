const SessionUtil = {
  login(user, success, error) {
    $.ajax({
      url: '/api/session',
      method: 'POST',
      data: { user },
      success,
      error,
    });
  },

  logout(success) {
    $.ajax({
      url: '/api/session',
      method: 'DELETE',
      success,
      error: () => (console.log("Logout error in SessionUtil#logout"))
    });
  },

  signup(user, success, error) {
    $.ajax({
      url: '/api/users',
      method: 'POST',
      dataType: 'json',
      data: { user },
      success,
      error,
    });
  },
};

export default SessionUtil;
