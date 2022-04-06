class PostsMailer < ApplicationMailer
  default from: "from@example.com"
  layout 'mailer'

  def new_post
    @post = params[:post]
    mail(to: @post.author.email, subject: 'New post')
  end
end
