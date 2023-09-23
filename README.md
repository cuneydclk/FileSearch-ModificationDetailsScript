# FileSearch-ModificationDetailsScript
A Bash script developed for the CENG322 Operating Systems course.

Project Name: "Recursive File Search and Modification Details Script"

Description:
The "Recursive File Search and Modification Details Script" is a Bash shell script that was developed as part of the CENG322 Operating Systems course assignment in the Spring semester of 2022-2023. This script provides a powerful tool for recursively searching the content of files within a specified directory and performing two key functions based on user input.

Function 1: Search and Copy Files
The first function of the script allows users to enter the name of a directory and a keyword to be searched within the files contained in that directory. It performs the following tasks:

Creates a folder named "Found" if it doesn't exist.
Searches for files containing the specified keyword within the directory and its subdirectories.
Copies the found files to the "Found" directory, prefixing their filenames with "found_".
Informs the user with the message "Files were copied to the Found directory!" when the keyword is found.
Displays the list of files in the "Found" directory.
Function 2: Display Modification Details
The second function of the script displays modification details of the files found in the "Found" directory, but it only works if the keyword was found in Function 1. It provides the following information for each file:

Last modified user.
Modification time in the format: "File X: found_fileX.txt was modified by User on Date at Time."
Additionally, this function creates a file named "modification_details.txt" within the "Found" directory, containing the same modification details as displayed.

This project showcases your proficiency in Bash scripting and your ability to perform file operations, recursive searches, and data extraction from file metadata. It's a valuable addition to your portfolio, demonstrating your skills in automating tasks related to file management and data extraction in a Unix-based environment.
