class UsersController < ApplicationController
  def all_users
    render({ :template => "photo_templates/users.html.erb"})
  end

  def sign_up
    render({ :template => "photo_templates/signup.html.erb" })
    user = User.new

    user.username = params.fetch("input_username")
    user.password = params.fetch("Password")
    user.password_confirmation = params.fetch("Password_confirmation")

    save_status = user.save

    if save_status == true
      session.store(:user_id, user.id)
      redirect_to("/users/#{user.username}", { :notice => "Welcome, " + user.username + "!"})
    else
      redirect_to("/user_sign_up", { :alert => user.errors.full_messages.to_sentence})
    end

  end

  def sign_in
    render({ :template => "photo_templates/signin.html.erb"})
  end

end

rails generate draft:model users password:string photos:string email:string private:boolean 
