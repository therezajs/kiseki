class Message < ActiveRecord::Base
	belongs_to :user
	has_many :replies, :dependent => :destroy

	validates :message, :writer_id, :user_id, :subject, :presence => true
end
