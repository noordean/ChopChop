class OrderMailer < ApplicationMailer
  def send_email(order)
    @order = order
    emails = "#{@order.receiver_email}, #{User.find_by(name: 'Admin').email}"
    mail(to: emails, subject: 'ChopChop Order Details')
  end
end
