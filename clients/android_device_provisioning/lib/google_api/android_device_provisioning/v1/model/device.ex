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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.Device do
  @moduledoc """
  Device

  ## Attributes

  - claims (List[DeviceClaim]): claims Defaults to: `null`.
  - configuration (String): The resource name of the configuration. Only set for customers. Defaults to: `null`.
  - deviceId (String): Device id Defaults to: `null`.
  - deviceIdentifier (DeviceIdentifier): Device identifier Defaults to: `null`.
  - deviceMetadata (DeviceMetadata): Device metadata Defaults to: `null`.
  - name (String): Resource name in &#39;partners/[PARTNER_ID]/devices/[DEVICE_ID]&#39;. Defaults to: `null`.
  """

  defstruct [
    :"claims",
    :"configuration",
    :"deviceId",
    :"deviceIdentifier",
    :"deviceMetadata",
    :"name"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.Device do
  import GoogleApi.AndroidDeviceProvisioning.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"claims", :list, GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceClaim, options)
    |> deserialize(:"deviceIdentifier", :struct, GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier, options)
    |> deserialize(:"deviceMetadata", :struct, GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.Device do
  def encode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Deserializer.serialize_non_nil(value, options)
  end
end

