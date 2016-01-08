#
class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :jpost, :rating, :date
end
