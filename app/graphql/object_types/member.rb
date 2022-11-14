# frozen_string_literal: true
  class ObjectTypes::Member < Types::BaseObject
    field :id, ID, null: false
    field :profilepic, String
    field :userid, Integer
    field :fullname, String
    field :hurigana, String
    field :department, String
    field :grade, String
    field :gender, String
    field :birthday, GraphQL::Types::ISO8601Date
    field :admin, Boolean
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
