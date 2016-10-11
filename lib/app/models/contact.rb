module Phonebook
  module Model
    class Contact
      include ::ActiveModel::Model
      include ::ActiveModel::Serialization
      attr_accessor :name, :phone, :id

      class << self
        attr_accessor :repository
      end

      def id=(id)
        @id = id.to_i
      end

      def attributes
        { 'id' => nil, 'name' => nil, 'phone' => nil }
      end

    end
  end
end
