class OrderMailer < ActionMailer::Base
  default from: "no-reply@kater.it"

  def created_order_email(order)
  	@user = order.user
  	@url = order_url(order.id)

  	mail(:to => @user.email, :subject => "Your kater.it order")
  end
end
