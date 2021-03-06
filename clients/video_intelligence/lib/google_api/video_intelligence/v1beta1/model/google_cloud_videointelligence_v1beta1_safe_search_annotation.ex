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

defmodule GoogleApi.VideoIntelligence.V1beta1.Model.GoogleCloudVideointelligenceV1beta1_SafeSearchAnnotation do
  @moduledoc """
  Safe search annotation (based on per-frame visual signals only). If no unsafe content has been detected in a frame, no annotations are present for that frame. If only some types of unsafe content have been detected in a frame, the likelihood is set to &#x60;UNKNOWN&#x60; for all other types of unsafe content.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"adult",
    :"medical",
    :"racy",
    :"spoof",
    :"timeOffset",
    :"violent"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.VideoIntelligence.V1beta1.Model.GoogleCloudVideointelligenceV1beta1_SafeSearchAnnotation do
  def decode(value, _options) do
    value
  end
end

