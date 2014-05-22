module Pobox
  class SMTPServer < EventMachine::Protocols::SmtpServer
    def initialize(conf)
      super
      @handler = conf[:handler] || -> (x) { puts x }
    end
    
    def receive_sender(sender)
      @sender = sender
      true
    end

    def receive_recipient(recipient)
      @recipient = recipient
      true
    end

    def receive_data_command
      @content = ""
      true
    end

    def receive_data_chunk(data)
      @content << data.join("\n")
      true
    end

    def receive_message
      @handler.call(@content)
      true
    end
  end
end
