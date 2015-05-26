class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  before_create :do_before_create

  GENDER = {'чоловіча' => 'man', 'жіноча' => 'woman'}

  def to_param
    uid
  end

  def do_before_create
    make_name
    make_uid
  end

  def make_uid
    self.uid = [self.name.parameterize, rand(36**6).to_s(36)].join("-")
  end

  def make_name
    self.name = "#{self.first_name} #{self.last_name}" unless self.name
  end

  #Method find user in db and update if user exist else create new
  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    params = {
        name: auth.extra.raw_info.name,
        first_name: auth.extra.raw_info.first_name,
        last_name: auth.extra.raw_info.last_name,
        gender: auth.extra.raw_info.gender
    }

    params[:email] = auth.info.email if auth.info.email

    user = User.where(:provider => auth.provider, :fb_id => auth.uid).first
    if user
      user.update_attributes(params)
      return user
    else
      params[:fb_id] = auth.uid
      params[:provider] = auth.provider

      registered_user = params[:email] ? User.find_by_email(params[:email]) : nil
      if registered_user
        params.delete(:email)
        registered_user.update_attributes(params)

        return registered_user
      else
        params[:password] = Devise.friendly_token[0,20]

        user = User.create(params)
      end
    end
  end

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create(name: data["name"],
                           provider:access_token.provider,
                           email: data["email"],
                           uid: access_token.uid ,
                           password: Devise.friendly_token[0,20]
        )
      end
    end
  end

  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = User.where(:email => auth.uid + "@twitter.com").first
      if registered_user
        return registered_user
      else
        user = User.create(name:auth.info.name,
                           provider:auth.provider,
                           uid:auth.uid,
                           email:auth.uid+"@twitter.com",
                           password:Devise.friendly_token[0,20]
        )
      end
    end
  end
end
