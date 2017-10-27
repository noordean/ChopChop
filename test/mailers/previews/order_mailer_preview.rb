# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview
  def send_mail_preview
    OrderMailer.send_email(Order.first)
  end
end
