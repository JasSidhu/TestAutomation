require_relative 'spec_helper'
require_relative '../pages/home'

describe 'home page' do
  include HomeHelpers

  let(:page) { Page.new(@driver) }

  it 'should load home page and verify UI elements' do
    page.load('/')
  end
end