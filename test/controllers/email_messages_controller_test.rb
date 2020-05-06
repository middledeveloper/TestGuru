# frozen_string_literal: true

require 'test_helper'

class EmailMessagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get email_message_index_url
    assert_response :success
  end

  test 'should get create' do
    get email_message_create_url
    assert_response :success
  end
end
