require 'eventmachine'
require 'mail'

class EmailServer < EventMachine::Protocols::SmtpServer
  def process_vrfy
    send_data "250 Send mail to find out."
  end

  def receive_recipient(rcpt)
    Mail::Address.new(rcpt).domain == 'lol.biz.info'
  end
end

EM.run { EM.start_server 'localhost', 3000, EmailServer }
