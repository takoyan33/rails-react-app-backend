module Mutations
  class DeleteMember < Mutations::BaseMutation
    argument :id, ID, required: true

    field :id, ID, null: false

    def resolve(id:)
      Member.find(id).delete

      { id: id }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end