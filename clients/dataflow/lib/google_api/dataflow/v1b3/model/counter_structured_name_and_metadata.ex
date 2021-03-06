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

defmodule GoogleApi.Dataflow.V1b3.Model.CounterStructuredNameAndMetadata do
  @moduledoc """
  A single message which encapsulates structured name and metadata for a given counter.

  ## Attributes

  - metadata (CounterMetadata): Metadata associated with a counter Defaults to: `null`.
  - name (CounterStructuredName): Structured name of the counter. Defaults to: `null`.
  """

  defstruct [
    :"metadata",
    :"name"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.CounterStructuredNameAndMetadata do
  import GoogleApi.Dataflow.V1b3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"metadata", :struct, GoogleApi.Dataflow.V1b3.Model.CounterMetadata, options)
    |> deserialize(:"name", :struct, GoogleApi.Dataflow.V1b3.Model.CounterStructuredName, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.CounterStructuredNameAndMetadata do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end

