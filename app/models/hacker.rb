class Hacker < ActiveRecord::Base

  after_initialize :init

  default_scope { order('created_at DESC') }

  def init
    self.name ||= Faker::Name.name
    self.app_name ||= Faker::App.name
    self.say_something_smart  ||= Faker::Hacker.say_something_smart
  end

end

# == Schema Information
#
# Table name: hackers
#
#  id                  :integer          not null, primary key
#  name          :string(255)
#  app_name            :string(255)
#  say_something_smart :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#
