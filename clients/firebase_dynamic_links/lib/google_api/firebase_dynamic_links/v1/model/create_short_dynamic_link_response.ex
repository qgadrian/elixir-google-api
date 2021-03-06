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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkResponse do
  @moduledoc """
  Response to create a short Dynamic Link.

  ## Attributes

  - previewLink (String): Preivew link to show the link flow chart. Defaults to: `null`.
  - shortLink (String): Short Dynamic Link value. e.g. https://abcd.app.goo.gl/wxyz Defaults to: `null`.
  - warning (List[DynamicLinkWarning]): Information about potential warnings on link creation. Defaults to: `null`.
  """

  defstruct [
    :"previewLink",
    :"shortLink",
    :"warning"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkResponse do
  import GoogleApi.FirebaseDynamicLinks.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"warning", :list, GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkWarning, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkResponse do
  def encode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Deserializer.serialize_non_nil(value, options)
  end
end

