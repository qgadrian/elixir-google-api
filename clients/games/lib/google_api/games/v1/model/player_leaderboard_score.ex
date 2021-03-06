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

defmodule GoogleApi.Games.V1.Model.PlayerLeaderboardScore do
  @moduledoc """
  This is a JSON template for a player leaderboard score object.

  ## Attributes

  - kind (String): Uniquely identifies the type of this resource. Value is always the fixed string games#playerLeaderboardScore. Defaults to: `null`.
  - leaderboard_id (String): The ID of the leaderboard this score is in. Defaults to: `null`.
  - publicRank (LeaderboardScoreRank): The public rank of the score in this leaderboard. This object will not be present if the user is not sharing their scores publicly. Defaults to: `null`.
  - scoreString (String): The formatted value of this score. Defaults to: `null`.
  - scoreTag (String): Additional information about the score. Values must contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986. Defaults to: `null`.
  - scoreValue (String): The numerical value of this score. Defaults to: `null`.
  - socialRank (LeaderboardScoreRank): The social rank of the score in this leaderboard. Defaults to: `null`.
  - timeSpan (String): The time span of this score. Possible values are:   - \&quot;ALL_TIME\&quot; - The score is an all-time score.  - \&quot;WEEKLY\&quot; - The score is a weekly score.  - \&quot;DAILY\&quot; - The score is a daily score. Defaults to: `null`.
  - writeTimestamp (String): The timestamp at which this score was recorded, in milliseconds since the epoch in UTC. Defaults to: `null`.
  """

  defstruct [
    :"kind",
    :"leaderboard_id",
    :"publicRank",
    :"scoreString",
    :"scoreTag",
    :"scoreValue",
    :"socialRank",
    :"timeSpan",
    :"writeTimestamp"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.PlayerLeaderboardScore do
  import GoogleApi.Games.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"publicRank", :struct, GoogleApi.Games.V1.Model.LeaderboardScoreRank, options)
    |> deserialize(:"socialRank", :struct, GoogleApi.Games.V1.Model.LeaderboardScoreRank, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.PlayerLeaderboardScore do
  def encode(value, options) do
    GoogleApi.Games.V1.Deserializer.serialize_non_nil(value, options)
  end
end

