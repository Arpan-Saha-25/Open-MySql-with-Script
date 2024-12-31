# MySQL Auto-Login Script 🛠️

This script automates the process of logging into a MySQL Server using a specified username and password, and can optionally execute MySQL commands. It is designed for **Windows** environments.

## Prerequisites ⚙️

- **MySQL Server** must be installed on your machine (the script assumes MySQL Server 8.0 is installed in the default path: `path\Program Files\MySQL\MySQL Server 8.0\bin`).
- Ensure the MySQL `bin` directory is properly located in the specified path.
- **Command Prompt (cmd)** should be available (default on Windows).

## Usage 🚀

1. **Edit the Script ✍️:**
   - Replace the `path\Program Files\MySQL\MySQL Server 8.0\bin` with the correct path to your MySQL installation if it's different.
   - Modify the `MYSQL_USER` and `MYSQL_PASSWORD` values with your MySQL username and password. By default, it is set to use `root` and `xyz` as credentials. Make sure `MYSQL_PASSWORD` is quoted if it contains spaces or special characters.

   Example:
   - Set `MYSQL_USER=my_user`
   - Set `MYSQL_PASSWORD="my_password"`

2. **Run the Script ▶️:**
   - Double-click on the `.bat` file or run it from the command prompt to execute the script.
   - The script will open a command window, navigate to the MySQL `bin` directory, and attempt to log into MySQL with the provided credentials.

3. **Command Execution (Optional) 💻:**
   - The script will automatically log in to MySQL using the provided credentials.
   - To run a MySQL command immediately after logging in, uncomment the line (by removing `::`).

4. **Keep the Command Window Open 🔒:**
   - The `cmd /k` at the end ensures the Command Prompt window stays open after the script completes, allowing for further interaction with MySQL.

## Example Script with Custom Command 📝

This is an example of how you can set up the script to log in and run commands:

- Set your MySQL username and password
- Execute MySQL commands (optional)
- Keep the terminal open for further interaction

## Notes 📌

- **Security Warning ⚠️**: Storing your password in plain text in the script can pose a security risk. Consider securing your credentials using environment variables or other secure methods.
- The script uses `cmd /k`, which will leave the terminal open for additional commands after MySQL login.
- If you don’t want to leave the terminal open, replace `cmd /k` with `exit`.

## Troubleshooting 🛠️

- **MySQL Command Not Found 🚫**: If you get an error saying that `mysql` is not recognized as a command, ensure the MySQL `bin` directory is correctly specified or added to your system's PATH.
- **Incorrect Password ❌**: If the login fails due to incorrect credentials, ensure your MySQL username and password are correctly set in the script.

## License 📝

This script is provided under the MIT License.
