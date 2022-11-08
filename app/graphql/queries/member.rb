module Queries
  class Member < Queries::BaseQuery
    argument :id, ID, required: true

    type ObjectTypes::Member, null: false

    def resolve(id:)
      ::Member.find(id)
    end
  end
end