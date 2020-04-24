# frozen_string_literal: true

class GitHubClient
  ROOT_ENDPOINT = 'https://api.github.com'
  ACCESS_TOKEN = '65c30af51692bd0569e0f54f6a50d4ff3a08b272'

  def initialize
    @http_client = setup_http_client
  end

  def create_gist(params)
    # @http_client.post('gists') do |request|
    #  request.headers['Authorization'] = "token #{ACCESS_TOKEN}"
    #  request.headers['Content-Type'] = 'application/json'
    #  request.body = params.to_json
    # end

    @http_client.create_gist(options = params.to_json)
  end

  private

  def setup_http_client
    Octokit::Client.new(access_token: ACCESS_TOKEN)
    # Faraday.new(url: ROOT_ENDPOINT)
  end
end
