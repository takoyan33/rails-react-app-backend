module Types
  class MutationType < Types::BaseObject
    field :createUser, mutation: Mutations::CreateUser # 追記
  end
end