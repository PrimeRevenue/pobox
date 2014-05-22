class Pobox::Message < ActiveRecord::Base
  validates_presence_of :sender, :recipient, :subject, :raw

  def self.parse(string)
    Mail::Message.new(string).tap do |m|
      m.to.each do |recipient|
        yield new(sender: m.from.first, recipient: recipient, subject: m.subject, raw: m.to_s)
      end
    end
  end
end
