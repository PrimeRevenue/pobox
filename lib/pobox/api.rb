module Pobox
  class API < Grape::API
    format :json
    
    resource 'mailboxes' do
      get do
        Message.distinct(:recipient).pluck(:recipient)
      end

      delete do
        Message.delete_all
      end
      
      route_param :mailbox do
        get do
          Message.where(recipient: params['mailbox'])
        end

        delete do
          Message.where(recipient: params['mailbox']).delete_all
        end
      end

      resource 'messages' do
        route_param :id do
          get do
            Message.find(params['id']).first
          end

          delete do
            Message.find(params['id']).delete
          end
        end
      end
    end
  end
end
