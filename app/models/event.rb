class Event < ApplicationRecord
  belongs_to :eventable, polymorphic: true
  enum trigger: {
    charge_succeeded: 0,
    charge_pending: 1,
    charge_failed: 2,
    purchase_created: 3,
    purchase_updated: 4,
    purchase_deleted: 5
  }
end
