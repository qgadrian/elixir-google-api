# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Books.V1.Api.Onboarding do
  @moduledoc """
  API calls for all endpoints tagged `Onboarding`.
  """

  alias GoogleApi.Books.V1.Connection
  import GoogleApi.Books.V1.RequestBuilder


  @doc """
  List categories for onboarding experience.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :locale (String): ISO-639-1 language and ISO-3166-1 country code. Default is en-US if unset.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Category{}} on success
  {:error, info} on failure
  """
  @spec books_onboarding_list_categories(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Books.V1.Model.Category.t} | {:error, Tesla.Env.t}
  def books_onboarding_list_categories(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"locale" => :query
    }
    %{}
    |> method(:get)
    |> url("/onboarding/listCategories")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Books.V1.Model.Category{})
  end

  @doc """
  List available volumes under categories for onboarding experience.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :category_id (List[String]): List of category ids requested.
    - :locale (String): ISO-639-1 language and ISO-3166-1 country code. Default is en-US if unset.
    - :max_allowed_maturity_rating (String): The maximum allowed maturity rating of returned volumes. Books with a higher maturity rating are filtered out.
    - :page_size (Integer): Number of maximum results per page to be included in the response.
    - :page_token (String): The value of the nextToken from the previous page.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volume2{}} on success
  {:error, info} on failure
  """
  @spec books_onboarding_list_category_volumes(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Books.V1.Model.Volume2.t} | {:error, Tesla.Env.t}
  def books_onboarding_list_category_volumes(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"categoryId" => :query,
      :"locale" => :query,
      :"maxAllowedMaturityRating" => :query,
      :"pageSize" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/onboarding/listCategoryVolumes")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Books.V1.Model.Volume2{})
  end
end
