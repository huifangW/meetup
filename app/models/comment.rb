class Comment < ActiveRecord::Base
	belongs_to :issue
  
  # 取评论者的头像,依赖于grvater对用户邮箱的绑定
	def user_avatar
	  gravatar_id = Digest::MD5.hexdigest(self.email.downcase)
	  "http://gravatar.com/avatar/#{gravatar_id}.png?s=512&d=retro"
  end
end
