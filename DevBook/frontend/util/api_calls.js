
module.exports = {

  createUser(data, serverAction){
    $.ajax({
      url: `api/users`,
      type: `POST`,
      dataType: `json`,
      data: {user:
            {fname: data.fname,
            lname: data.lname,
            email: data.email,
            password: data.password }},
      success(resp){
        serverAction(resp);
      }
    });
  }
};