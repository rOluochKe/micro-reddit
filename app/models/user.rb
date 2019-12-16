class User < ApplicationRecord
  validate :username, presence :true, length {min :6, max :12}
  valid_email_regex = /^[a-zA-Z0-9.!#$%&'*+\/=​?^_`{|}~-]+@​[a-zA-Z0-9](?:​[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:​\.[a-zA-Z0-9](?:​[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/
  validate :email, presence :true length {min :6, max :50}, format {with :valid_email_regex}
  uniqueness :true
end
