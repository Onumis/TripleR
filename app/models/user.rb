class User < ApplicationRecord

  validates :provider, :uid, presence: true

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
        user.name = auth['info']['name']
        user.email = auth['info']['email']
        user.image_url = auth['info']['image']
      end
      if auth['credentials']
        user.credential_token = auth['credentials']['token']
        user.credential_expires_at = auth['credentials']['expires_at']
      end
    end
  end

end
