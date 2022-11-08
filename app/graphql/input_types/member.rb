class InputTypes::Member < Types::BaseInputObject
  graphql_name 'MemberAttributes' # ObjectTypes::Bookと名前がバッティングしないようにする

  argument :fullname, String, required: true
  argument :hurigana, String
  argument :department, String
  argument :grade, String
  argument :gender, String
  argument :birthday, String
  argument :admin, String
end