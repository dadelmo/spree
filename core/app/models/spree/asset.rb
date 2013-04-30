module Spree
  class Asset < ActiveRecord::Base
    belongs_to :viewable, polymorphic: true
    acts_as_list scope: [:viewable_id, :viewable_type]
  end
end
