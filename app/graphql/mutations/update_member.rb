module Mutations
  class UpdateMember < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :params, InputTypes::Member, required: true
    
    field :member, ObjectTypes::Member, null: false

    def resolve(id:, params:)
      member = Member.find(id)
      member.update!(params.to_h)

      { member: member }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end