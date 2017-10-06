require "digest"
md5 = Digest::MD5.file("/etc/hosts").hexdigest
puts md5
