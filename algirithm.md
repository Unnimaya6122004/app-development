Algorithm:
Simple Resume Parser

Input: Resume document in plain text format

Output: Parsed resume information

1. Initialize an empty dictionary to store parsed information (e.g., parsedData).

2. Split the resume text into lines or sections (e.g., by newline characters).

3. Iterate through each line or section in the resume text.

4. For each line or section, check if it contains key information related to Contact Information, Education, Experience, or Skills using keywords or patterns. For example:
   - If it contains keywords like "Name," "Email," or "Phone," extract and store Contact Information.
   - If it contains keywords like "Education" or "Degree," extract and store Education details.
   - If it contains keywords related to work experience, extract and store Experience details.
   - If it contains keywords like "Skills" or "Technologies," extract and store Skills.

5. After processing all lines or sections, return the parsedData dictionary containing the extracted information.

6. Optional: Further process or validate the extracted information (e.g., format dates consistently, validate email addresses, or categorize skills).

7. Output the structured data for use in other applications.

End of Algorithm
