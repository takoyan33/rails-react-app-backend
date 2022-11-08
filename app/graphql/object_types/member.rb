# frozen_string_literal: true

  class ObjectTypes::Member < Types::BaseObject
    field :id, ID, null: false
    field :userid, Integer
    field :fullname, String
    field :hurigana, String
    field :department, String
    field :grade, String
    field :gender, String
    field :birthday, String
    field :admin, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end