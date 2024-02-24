# Profile Cleanup Tool

The Profile Cleanup Tool is a PowerShell script designed to streamline the process of managing user profiles on a Windows system. This tool is especially useful for IT administrators and users looking to quickly clean up user profiles that are no longer needed, thus freeing up space and maintaining system efficiency.

## Features

- **Selective User Profile Deletion**: Automatically identifies and deletes user profiles, excluding the current user and any specified accounts.
- **Safe Operation**: Ensures that special profiles and the current user's profile are not affected.
- **Efficient Cleanup**: Frees up system space by removing unnecessary user profiles.

## How It Works

1. **Identification**: The script identifies all user profiles present on the system, excluding any specified by the administrator and the profile of the current user.
2. **Deletion**: For each identified profile, the script attempts to delete it, ensuring that only unnecessary profiles are removed.
3. **Feedback**: Provides immediate feedback on the success or failure of each deletion attempt.

### Each operation involves:

- Scanning for all user profiles on the system.
- Filtering out profiles to be preserved, including the current user's profile and any specified exclusions.
- Attempting to delete each of the remaining profiles, with error handling to manage any issues encountered during deletion.

## Usage

To use the Profile Cleanup Tool, follow these steps:

1. Open PowerShell with administrative privileges.
2. Navigate to the directory containing the script.
3. Execute the script by typing `.\Profile_Cleanup_Tool.ps1` and press Enter.

Make sure to replace `Profile_Cleanup_Tool.ps1` with the actual name of the script if different.
