module Types
  class MutationType < Types::BaseObject
    field :createUser, mutation: Mutations::CreateUser
    field :create_book, mutation: Mutations::CreateBook
    field :update_book, mutation: Mutations::UpdateBook
    field :delete_book, mutation: Mutations::DeleteBook
    field :create_member, mutation: Mutations::CreateMember
    field :update_member, mutation: Mutations::UpdateMember
    field :delete_member, mutation: Mutations::DeleteMember
  end
end