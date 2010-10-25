class MyMailer < ActionMailer::Base
  def mail(newjob)
    @from       = "admin@electrictextiles.com"
    @recipients = "mchapple@nationalbuildingsystems.com"
    @subject    = "I may just need to write an email that doesn't sound like spam"
    body(:job => newjob)
  end
end
