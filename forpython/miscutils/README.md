# **Setup Guide: Google Sheet Downloader**

Follow these steps to configure the Python script. This is a **one-time setup**.

### **Step 1: Install Python Libraries**

First, install the necessary Google client libraries for Python. Open your terminal or command prompt and run:  
pip install google-api-python-client google-auth-httplib2 google-auth-oauthlib

### **Step 2: Configure Google Cloud Project & Credentials**

You need to tell Google that your script is authorized to access your data.

1. **Go to the Google Cloud Console:** [https://console.cloud.google.com/](https://console.cloud.google.com/)  
2. **Create a new project.** If you already have one you'd like to use, you can select it from the top dropdown menu. Otherwise, click the dropdown and select "NEW PROJECT". Give it a name like "Python Sheets Downloader" and click "Create".  
3. **Enable the Google Drive API.**  
   * Using the top search bar, search for "Google Drive API" and select it.  
   * Click the **"Enable"** button. Wait for it to finish.  
4. **Create OAuth 2.0 Credentials.**  
   * In the search bar, search for "APIs & Services" and go to that page.  
   * On the left-hand menu, click on **"OAuth consent screen"**.  
   * Choose **"External"** for the User Type and click **"Create"**.  
   * On the next page, fill in the required fields:  
     * **App name:** "Python Sheets Downloader" (or any name you like)  
     * **User support email:** Select your email address.  
     * **Developer contact information:** Enter your email address again.  
   * Click **"Save and Continue"** through the "Scopes" and "Test Users" sections. You don't need to add anything there. Finally, click **"Back to Dashboard"**.  
5. **Generate the Credential File.**  
   * Now, go to the **"Credentials"** tab on the left.  
   * Click **"+ CREATE CREDENTIALS"** at the top and select **"OAuth client ID"**.  
   * For **"Application type"**, choose **"Desktop app"**.  
   * Give it a name if you wish, and click **"Create"**.  
   * A window will pop up. Click the **"DOWNLOAD JSON"** button.  
6. **Final Placement.**  
   * A file will be downloaded (e.g., client\_secret\_....json).  
   * **IMPORTANT:** Rename this file to credentials.json and place it in the **exact same folder** as your download\_sheet.py script.

### **Step 3: Run the Script**

1. Open the download\_sheet.py file and paste the URL of your Google Sheet into the sheet\_to\_download\_url variable.  
2. Save the file.  
3. Run the script from your terminal: python download\_sheet.py  
4. **First-Time Authorization:** The first time you run it, a new tab will open in your web browser asking you to log in to your Google Account and grant permission. After you approve it, the script will continue, and the Excel file will be downloaded. A token.json file will also be created in your folder to remember your login for future runs.