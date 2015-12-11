class SecretCode < ActiveRecord::Base
  belongs_to :user
   delegate :email, to: :user, allow_nil: true, prefix: true
  
  def self.generate_code(count)
    uuid = UUID.new
    count[:limit].to_i.times do
      SecretCode.create(:code => uuid.generate)
    end
  end
end
