import re
import sys

def main():
	args = sys.argv

	if len(args) != 2:
		print(f"expected a single file to be passed. Got {len(args)-1} args instead.\nargs={args[1:]}")
		return
	
	args = args[1:]  # first arg is the python file itself

	file_path = args[0]
	regex = r' ICON(?:_URI)?="data:image/png;base64,[a-zA-Z0-9/+]+=*"| ADD_DATE="[0-9]+"| LAST_MODIFIED="[0-9]+"'
	
	with open(file_path, 'r') as file:
		content = file.read()

	modified_content = re.sub(regex, '', content)

	with open(file_path, 'w') as file:
		file.write(modified_content)


main()
