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

defmodule GoogleApi.DFAReporting.V28.Model.InventoryItem do
  @moduledoc """
  Represents a buy from the DoubleClick Planning inventory store.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"accountId",
    :"adSlots",
    :"advertiserId",
    :"contentCategoryId",
    :"estimatedClickThroughRate",
    :"estimatedConversionRate",
    :"id",
    :"inPlan",
    :"kind",
    :"lastModifiedInfo",
    :"name",
    :"negotiationChannelId",
    :"orderId",
    :"placementStrategyId",
    :"pricing",
    :"projectId",
    :"rfpId",
    :"siteId",
    :"subaccountId",
    :"type"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.InventoryItem do
  import GoogleApi.DFAReporting.V28.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"adSlots", :list, GoogleApi.DFAReporting.V28.Model.AdSlot, options)
    |> deserialize(:"lastModifiedInfo", :struct, GoogleApi.DFAReporting.V28.Model.LastModifiedInfo, options)
    |> deserialize(:"pricing", :struct, GoogleApi.DFAReporting.V28.Model.Pricing, options)
  end
end

