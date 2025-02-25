# xslt-parser

Overview of the Parser Tool:
The XSLT Parser Tool is designed to analyze XSLT files, extract key components, and present structured data for better readability and debugging. It helps users identify variables, parameters, and select queries, making XSLT analysis more efficient.

Key Features:
File Upload: Users can upload multiple XSLT/XML/XSL files through the provided file input option.
Data Extraction: Upon file upload, the tool automatically parses the files to extract and display:

Namespaces
Includes and Imports (with unused detection)
Variables (with unused and undeclared detection)
Templates (with usage tracking)
Logical constructs (choose, for-each, if statements)
Tabular Display: Results are displayed in organized tabs (“Body” and “Raw”) for easier navigation.
Export to Excel: Users can export the extracted data to an Excel file by clicking the “Export to Excel” button.


File Upload:
Users select one or more XSLT files using the file input control.
Uploaded files are listed with their parsing status.

Data Parsing:
The tool processes the uploaded files to extract relevant components.
Extracted data is displayed under the “Body” tab in a readable format.

Export to Excel:
The “Export to Excel” button initiates the export process.
Extracted data is compiled into an Excel file for offline review.

Recent Enhancements:
Extracting Variable and Parameter Usages

The tool now extracts both <xsl:variable> and <xsl:param>.
Each extracted item is categorized as either a Variable or a Parameter, making it easy to differentiate.
Tracking Variable Usages

The tool scans the XSLT file to identify occurrences where variables are referenced.
It displays these occurrences in a new tab, allowing for a more detailed examination of variable usage in the transformation logic.
Extracting Select Queries

The tool now extracts select queries associated with variables and parameters.
If a variable is assigned using a select attribute, it is displayed instead of its raw value, ensuring clarity in how values are derived.
