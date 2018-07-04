class ContactMailer < ApplicationMailer
  def contact_mail(blog)
    @blog = blog
    
    mail to: @blog.user.email, subject:"お問合せ確認メール"
  end
end
