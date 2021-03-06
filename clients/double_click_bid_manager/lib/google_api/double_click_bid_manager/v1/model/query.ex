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

defmodule GoogleApi.DoubleClickBidManager.V1.Model.Query do
  @moduledoc """
  Represents a query.

  ## Attributes

  - kind (String): Identifies what kind of resource this is. Value: the fixed string \&quot;doubleclickbidmanager#query\&quot;. Defaults to: `null`.
  - metadata (QueryMetadata): Query metadata. Defaults to: `null`.
  - params (Parameters): Query parameters. Defaults to: `null`.
  - queryId (String): Query ID. Defaults to: `null`.
  - reportDataEndTimeMs (String): The ending time for the data that is shown in the report. Note, reportDataEndTimeMs is required if metadata.dataRange is CUSTOM_DATES and ignored otherwise. Defaults to: `null`.
  - reportDataStartTimeMs (String): The starting time for the data that is shown in the report. Note, reportDataStartTimeMs is required if metadata.dataRange is CUSTOM_DATES and ignored otherwise. Defaults to: `null`.
  - schedule (QuerySchedule): Information on how often and when to run a query. Defaults to: `null`.
  - timezoneCode (String): Canonical timezone code for report data time. Defaults to America/New_York. Defaults to: `null`.
  """

  defstruct [
    :"kind",
    :"metadata",
    :"params",
    :"queryId",
    :"reportDataEndTimeMs",
    :"reportDataStartTimeMs",
    :"schedule",
    :"timezoneCode"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V1.Model.Query do
  import GoogleApi.DoubleClickBidManager.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"metadata", :struct, GoogleApi.DoubleClickBidManager.V1.Model.QueryMetadata, options)
    |> deserialize(:"params", :struct, GoogleApi.DoubleClickBidManager.V1.Model.Parameters, options)
    |> deserialize(:"schedule", :struct, GoogleApi.DoubleClickBidManager.V1.Model.QuerySchedule, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V1.Model.Query do
  def encode(value, options) do
    GoogleApi.DoubleClickBidManager.V1.Deserializer.serialize_non_nil(value, options)
  end
end

