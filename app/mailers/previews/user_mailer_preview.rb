class UserMailerPreview < ActionMailer::Preview

    # Preview this email at
    # http://localhost:3000/rails/mailers/user_mailer/account_activation
    def account_activation
        user = User.first
        user.action_token = User.new_token
        UserMailer.account_activation(user)
  
    # Preview this email at
    # http://localhost:3000/rails/mailers/user_mailer/password_reset
    def password_reset
      UserMailer.password_reset
    end
  end