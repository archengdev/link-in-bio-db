# == Schema Information
#
# Table name: links
#
#  id                :bigint           not null, primary key
#  image             :string
#  image_description :string
#  url               :string
#  url_description   :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Link < ApplicationRecord
end
