module Mutations
  class CreateMember < Mutations::BaseMutation
    argument :params, InputTypes::Member, required: true

    field :member, ObjectTypes::Member, null: false

    def resolve(params:)
      member = Member.create!(params.to_h)

      { member: member }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end