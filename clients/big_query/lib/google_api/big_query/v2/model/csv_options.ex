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

defmodule GoogleApi.BigQuery.V2.Model.CsvOptions do
  @moduledoc """
  

  ## Attributes

  - allowJaggedRows (boolean()): [Optional] Indicates if BigQuery should accept rows that are missing trailing optional columns. If true, BigQuery treats missing trailing columns as null values. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. Defaults to: `null`.
  - allowQuotedNewlines (boolean()): [Optional] Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false. Defaults to: `null`.
  - encoding (String.t): [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties. Defaults to: `null`.
  - fieldDelimiter (String.t): [Optional] The separator for fields in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence \&quot;\\t\&quot; to specify a tab separator. The default value is a comma (&#39;,&#39;). Defaults to: `null`.
  - quote (String.t): [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote (&#39;\&quot;&#39;). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true. Defaults to: `null`.
  - skipLeadingRows (String.t): [Optional] The number of rows at the top of a CSV file that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped. Defaults to: `null`.
  """

  defstruct [
    :"allowJaggedRows",
    :"allowQuotedNewlines",
    :"encoding",
    :"fieldDelimiter",
    :"quote",
    :"skipLeadingRows"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.CsvOptions do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.CsvOptions do
  def encode(value, options) do
    GoogleApi.BigQuery.V2.Deserializer.serialize_non_nil(value, options)
  end
end

