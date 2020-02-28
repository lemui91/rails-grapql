module Types
  class QueryType < BaseObject
    field :all_links, resolver: Resolvers::LinksSearch
  end
end