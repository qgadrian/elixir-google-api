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

defmodule GoogleApi.Genomics.V1.Model.ComputeEngine do
  @moduledoc """
  Describes a Compute Engine resource that is being managed by a running pipeline.

  ## Attributes

  - diskNames (List[String]): The names of the disks that were created for this pipeline. Defaults to: `null`.
  - instanceName (String): The instance on which the operation is running. Defaults to: `null`.
  - machineType (String): The machine type of the instance. Defaults to: `null`.
  - zone (String): The availability zone in which the instance resides. Defaults to: `null`.
  """

  defstruct [
    :"diskNames",
    :"instanceName",
    :"machineType",
    :"zone"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.ComputeEngine do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.ComputeEngine do
  def encode(value, options) do
    GoogleApi.Genomics.V1.Deserializer.serialize_non_nil(value, options)
  end
end

