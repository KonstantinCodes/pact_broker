require './spec/spec_helper'
require 'pact/provider/rspec'
require_relative 'provider_states_for_my_consumer'


Pact.service_provider "Pact Broker" do
  app { PactBroker::API.new }

  honours_pact_with "Pact Broker Client" do
    pact_uri "../pact_broker-client/spec/pacts/pact_broker_client-pact_broker.json"
  end

end