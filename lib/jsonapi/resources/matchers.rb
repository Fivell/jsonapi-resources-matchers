require "jsonapi/resources/matchers/version"
require "jsonapi/resources/matchers/have_attribute"
require "jsonapi/resources/matchers/have_creatable_field"
require "jsonapi/resources/matchers/have_updatable_field"
require "jsonapi/resources/matchers/have_sortable_field"
require "jsonapi/resources/matchers/filter"
require "jsonapi/resources/matchers/relationship"
require "jsonapi/resources/matchers/have_model_name"
require "jsonapi/resources/matchers/have_primary_key"

module JSONAPI
  module Resources
    module Matchers

      def have_creatable_field(name)
        HaveCreatableField.new(name)
      end

      def have_updatable_field(name)
        HaveUpdatableField.new(name)
      end

      def have_sortable_field(name)
        HaveSortableField.new(name)
      end

      def have_attribute(name)
        HaveAttribute.new(name)
      end

      def filter(name)
        Filter.new(name)
      end

      def have_many(name)
        Relationship.new(:have_many, name)
      end

      def have_one(name)
        Relationship.new(:have_one, name)
      end

      def have_model_name(name)
        HaveModelName.new(name)
      end

      def have_primary_key(name)
        HavePrimaryKey.new(name)
      end

    end
  end
end

require "jsonapi/resources/matchers/integrations/rspec"
