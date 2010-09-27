# == Schema Information
# Schema version: 20100926043831
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  repID      :string(255)
#  admin      :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'digest'
class User < ActiveRecord::Base
   email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   attr_accessor :password
   attr_accessible :name, :email, :phone, :repID, :admin, :password

   validates_uniqueness_of :name
   validates_length_of     :name,  :within  => 2..60
   validates_length_of     :email, :within  => 5..140
   validates_inclusion_of  :admin, :in      => [0,1]
   validates_format_of     :email, :with    => email_regex

   validates_presence_of     :password
   validates_length_of       :password, :within => 6..40

   before_save :encrypt_password
   def has_password?(submitted_password)
      encrypted_password == encrypt(submitted_password)
   end
   def remember_me!
      self.remember_token = encrypt("#{salt}--#{id}--#{Time.now.utc}")
      save_without_validation
   end
   def self.authenticate(email,submitted_password)
      user = find_by_email(email)
      return nil if user.nil?
      return user if user.has_password?(submitted_password)
   end
private
   def encrypt_password
      unless passsword.nil?
         self.salt = make_salt
         self.encrypted_password = encrypt(password)
      end
   end
   def encrypt(string)
      secure_hash("%{salt}%{string}")
   end
   def make_salt
      secure_hash("#{Time.now.utc}#{password}")
   end
   def secure_hash(string)
      Digest::SHA2.hexdigest(string)
   end
end

#require 'digest'
#class User < ActiveRecord::Base
#
#
#   def has_password?(submitted_password)
#      encrypted_password == encrypt(submitted_password)
#   end
#
#   private
#      def encrypt_password
#         self.salt = make_salt if new_record?
#         self.encrypted_password = encrypt(password)
#      end
#      def encrypt(string)
#         secure_hash("#{salt}--#{string}")
#      end
#      def make_salt
#         secure_hash("#{Time.now.utc}--#{password}")
#      end
#      def secure_hash(string)
#         Digest::SHA2.hexdigest(string)
#      end

