# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    validates :username, :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: { message: 'Password cant be blank' }
    validates :password, length: { minimum: 6, allow_nil: true }
    before_validation :ensure_session_token

    attr_reader :password

    def self.find_by_credentials(username, password)
        u = User.find_by(username: username)
        if u && BCrypt::Password.new(u.password_digest).is_password?(password)
            return u
        else
            raise "User with these credentials does not exist"
        end
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token!
        self.session_token = User.generate_session_token
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= User.generate_session_token
    end

    def password=(pw)
        @password = pw
        self.password_digest = BCrypt::Password.create(pw)
    end
end
