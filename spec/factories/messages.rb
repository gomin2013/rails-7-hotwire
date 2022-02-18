# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  room_id    :integer          not null
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_messages_on_room_id  (room_id)
#

FactoryBot.define do
  factory :message do
    room { nil }
    content { 'MyText' }
  end
end