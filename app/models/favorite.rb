# == Schema Information
#
# Table name: favorites
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  liked_user_id  :integer
#  liking_user_id :integer
#
class Favorite < ApplicationRecord
end