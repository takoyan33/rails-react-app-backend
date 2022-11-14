class InputTypes::Member < Types::BaseInputObject
  graphql_name 'MemberAttributes' # ObjectTypes::Bookと名前がバッティングしないようにする

  argument :fullname, String
  argument :profilepic, String
  argument :hurigana, String
  argument :department, String
  argument :grade, String
  argument :gender, String
  argument :birthday, GraphQL::Types::ISO8601Date
  argument :admin, Boolean
end