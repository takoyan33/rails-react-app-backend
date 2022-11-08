module Queries
  class Members < Queries::BaseQuery

    type [ObjectTypes::Member], null: false

    def resolve
      ::Member.all.order(:id)
    end
  end
end