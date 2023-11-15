OpenAI API Key Checker
===============

**⚠⚠⚠Disclaimer: **
===============

This tool, the OpenAI API Key Checker, is created and provided solely for educational and informational purposes.
This is designed to help users understand and experiment with OpenAI API key verification mechanisms, as this checks whether the particular API keys are valid.


##**📗Usage Guidelines:**

- ☑ **Educational Purposes Only:** This tool should be used exclusively for educational purposes to learn and explore the functioning of OpenAI API key authentication.

- ☑ **No Malicious Use:** Any malicious or unauthorized use of this tool, including attempts to compromise security, gain unauthorized access, or engage in illegal activities, is strictly prohibited.

**⚖Legal Considerations:**

- ☑ **Not Responsible for Misuse:** The owner and creator of this tool disclaim any responsibility for the misuse or unauthorized use of the tool. Users are solely responsible for their actions and should adhere to all applicable laws and regulations.

- ☑ **Punishable Offenses:** Engaging in any malicious activities using this tool may be considered illegal and punishable under applicable laws. Users are urged to respect legal boundaries and ethical considerations.

- ☑ **Use at Your Own Risk:** Use of this tool is at the user's own risk. The owner of the tool is not responsible for any legal consequences, damages, or liabilities that may arise from the use of this tool.

**P.S:** OPEN AI might implement Rate_limiting on the completions end-point (refer the bash file), then this tool might not work.

**Usage:**

- 1. Clone this repo: `https://github.com/vinay5916/OPEN_AI_API_KEY_Checker.git` .
- 2. Now, type `cd OPEN_AI_API_KEY_Checker` .
  3. Give permissions for the file to make it executavle: `chmod +x openai_api_key_tester.sh` .
  4. Run the file by typing `./openai_api_key_tester.sh <api_keys_file.txt>` or `bash openai_api_key_tester.sh <api_keys_file.txt>` and press enter.

This will check the API keys provided in the input file and return if they are active or invalid.

Additional: You can redirect this output to another file with grep and stdout.
`./openai_api_key_tester.sh "<api_keys_file.txt>" | grep "success" > active_keys.txt`
