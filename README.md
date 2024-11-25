# LenovoYogaPenToggle
A small PowerShell script to toggle the pen driver on and off for Lenovo Yoga 7 2-in-1 laptops.
(Work-in-progress)

# Instructions
To start, make sure your Lenovo drivers are up to date from the [Lenovo website](https://pcsupport.lenovo.com/us/en/products/laptops-and-netbooks/yoga-series/yoga-7-2-in-1-16ahp9/downloads/ds567269-wacom-driver-for-windows-11-64-bit-yoga-7-2-in-1-14ahp9-yoga-7-2-in-1-16ahp9?category=Mouse,%20Touchpad,%20Keyboard%20and%20Pen), especially for the pen driver, and that in device manager, it displays the HID-compliant pen driver as otherwise, it'll most likely be combined with the touchscreen driver which prevents this program from working on it.

![image](https://github.com/user-attachments/assets/a526e608-b922-4ac4-ab38-cbd8e3383c76)

Next, make sure to download both the [pen_toggle.ps1](https://github.com/Mfarooq360/LenovoYogaPenToggle/blob/main/pen_toggle.ps1) file and the [pen_toggle.exe.lnk](https://github.com/Mfarooq360/LenovoYogaPenToggle/blob/main/pen_toggle.exe.lnk) file, and in the properties of the pen_toggle.exe.lnk file, go to the Shortcut tab and make sure the path listed at the end of the Target section is set to the path of pen_toggle.ps1 while keeping the data before the path intact.

*Example:*

**Target:** 

C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "C:\Users\username\Downloads\pen_toggle.ps1"

![image](https://github.com/user-attachments/assets/d49ef595-8041-4274-967a-615894672ad0)

Then, after the pen_toggle.exe.lnk file's target has been configured, feel free to move it to the desktop or wherever desired. Just be sure to keep pen_toggle.ps1 in the original path that you specified in the Target section of pen_toggle.exe.lnk.

Finally, test the script by running pen_toggle.exe.lnk and checking device manager to see if running it for the first time changes the device from enabled to disabled and vice versa on the next run, checking by either scanning for hardware changes in device manager or restarting the device manager program after toggling. 

**On:**
![Screenshot 2024-11-25 101523](https://github.com/user-attachments/assets/6c13d684-0e06-4d5a-aca2-e26a12d739a1)

**Off:**
![Screenshot 2024-11-25 101419](https://github.com/user-attachments/assets/531b0179-bfee-4698-af6d-a248c9ddda63)

This can then allow the script to be used in ways such as opening it from the desktop, opening it after searching it from the search bar, or even figuring out how to make it run when a certain action happens such as when entering tablet mode or exiting tablet mode. (This is something I plan on doing if I can figure out how, feel free to provide help if you find any info to help make this work, I primarily use C# for coding.)
