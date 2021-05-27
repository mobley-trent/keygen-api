# frozen_string_literal: true

module Billings
  class DeleteCustomerService < BaseService

    def initialize(customer:)
      @customer = customer
    end

    def execute
      c = Billings::Customer.retrieve(customer)
      c.delete
    rescue Billings::Error
      nil
    end

    private

    attr_reader :customer
  end
end
