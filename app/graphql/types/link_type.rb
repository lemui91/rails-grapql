module Types
  class LinkType < BaseObject
    field :id, ID, null: false
    field :url, String, null: false
    field :description, String, null: false
    # `posted_by` is automatically camelcased as `postedBy`
    # field can be nil, because we added users relationship later
    # "method" option remaps field to an attribute of Link model
    field :posted_by, UserType, null: true, method: :user
    field :votes, [Types::VoteType], null: false
  end
end