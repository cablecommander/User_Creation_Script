# User_Creation_Script

This PowerShell script was created to streamline the process of user creation in Active Directory.  

---

## ✅ Requirements

Before using the script, make sure the following conditions are met:

- Active Directory must be installed and accessible.
- The script must be run by a user with sufficient AD privileges to create users.
- The PowerShell execution policy must allow running scripts (e.g., `RemoteSigned` or `Unrestricted`).

---

## 🛠️ Setup Instructions

Follow the steps below to configure and run the script:

### **Step 1 – Download**
Save the script file to your Windows Server or a workstation with AD administrative privileges.

### **Step 2 – Edit**
Open the script in a text editor and update the following:

- Modify all variable values (such as username, OU, default password).
- Adjust domain-specific details to match your environment.

### **Step 3 – Save**
After making changes, save and close the file.

### **Step 4 – Run**
Right-click the script and select **"Run as Administrator"**.  
Follow the on-screen prompts to complete the user creation process.

---

## ✅ Post-Creation

Once the user is created, you may:

- Confirm the new account in **Active Directory Users and Computers (ADUC)**.
- Assign the user to appropriate groups or apply required policies.

---
