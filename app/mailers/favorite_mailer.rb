class FavoriteMailer < ActionMailer::Base
  default from: "j.a.lam@live.com"

  def new_comment(user, post, comment)

    #New Headers
    headers["Message-ID"] = "<comments/#{comment.id}@bloccitnew.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@bloccitnew.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@bloccitnew.herokuapp.com>"

@user = user
@post = post
@comment = comment

mail(to: user.email, subject: "New comment on #{post.title}")
end
end

