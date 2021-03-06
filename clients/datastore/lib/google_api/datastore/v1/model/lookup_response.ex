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

defmodule GoogleApi.Datastore.V1.Model.LookupResponse do
  @moduledoc """
  The response for Datastore.Lookup.

  ## Attributes

  - deferred (List[Key]): A list of keys that were not looked up due to resource constraints. The order of results in this field is undefined and has no relation to the order of the keys in the input. Defaults to: `null`.
  - found (List[EntityResult]): Entities found as &#x60;ResultType.FULL&#x60; entities. The order of results in this field is undefined and has no relation to the order of the keys in the input. Defaults to: `null`.
  - missing (List[EntityResult]): Entities not found as &#x60;ResultType.KEY_ONLY&#x60; entities. The order of results in this field is undefined and has no relation to the order of the keys in the input. Defaults to: `null`.
  """

  defstruct [
    :"deferred",
    :"found",
    :"missing"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.LookupResponse do
  import GoogleApi.Datastore.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"deferred", :list, GoogleApi.Datastore.V1.Model.Key, options)
    |> deserialize(:"found", :list, GoogleApi.Datastore.V1.Model.EntityResult, options)
    |> deserialize(:"missing", :list, GoogleApi.Datastore.V1.Model.EntityResult, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.LookupResponse do
  def encode(value, options) do
    GoogleApi.Datastore.V1.Deserializer.serialize_non_nil(value, options)
  end
end

