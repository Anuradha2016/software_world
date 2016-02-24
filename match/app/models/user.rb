def self.authenticate(username_or_email="", login_password="")
if EMAIL_REGEX.match(username_or_email)
user = User.find_by_email(username_or_email)
else
user = User.find_by_username(username_or_email)
end
if user && user.match_password(login_password)
return user
else
return false
end
end
def match_password(login_password="")
encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
end