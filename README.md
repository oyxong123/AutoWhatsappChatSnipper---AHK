# Auto Whatsapp Chat Snipper
<p align="center">
    <img width="246" height="42" alt="image" src="https://github.com/user-attachments/assets/a8d506bd-5d43-4c93-988b-8d6de5a544fc" />
</p>

Auto Whatsapp Chat Snipper is an AHK script that automatically captures sequential screenshots of WhatsApp Web Chat 
and saves them with date-indexed file names into a specified directory.

It is a program that me and my very close friend Winnie use weekly to document our WhatsApp chat history. 
It, along with the other programs and applications I have built, integrates into one large ecosystem. 
I have used it for 45+ times with 11,000+ pictures captured by this point.

Feel to to try it out, share it with others, and let me know if this program personally helped you in any way!

Contributions, issues, and pull requests are welcomed!

## Requirements
- Windows 10 (other versions not tested)
- [AutoHotKey v1.1](https://www.autohotkey.com/)
- A screen resolution of 1366 x 768
- The latest version of Google Chrome (tested up to 141.0.7390.66)

## Installation
1. If you have git installed, clone the repo.
    ```
    git clone https://github.com/oyxong123/AutoWhatsappChatSnipper---AHK.git
    ```
    Otherwise, download the repo and unzip it.
2. Press `Win+R` and type `shell:startup` to open the startup folder of the computer, then paste `AutoWhatsappChatSnipper - AHK.ahk` from the repo in it.
   This allows the program to run automatically every time the computer boots up. (Optional)
3. Run `AutoWhatsappChatSnipper - AHK.ahk`.

## Usage
1. Open **Snipping Tool**.
<p align="center">
   <img width="160" height="69" alt="image" src="https://github.com/user-attachments/assets/380c8ef4-f878-4289-b347-81be02059d6c" />
</p>

2. Snip a random screenshot.
3. Save the image in the directory that you want the program to save in later.
<p align="center">
    <img width="661" height="491" alt="image" src="https://github.com/user-attachments/assets/d62f2790-b719-466f-b14b-50c46299249e" />
</p>

4. Delete the image from the directory.
5. Open **WhatsApp Web** through **Chrome**, then open the chat that you want to capture.
<p align="center">
   <img width="682" height="301" alt="image" src="https://github.com/user-attachments/assets/8ab0c99b-1718-4d94-b0d4-2f817b02c96a" />
</p>

6. Scroll up or search up the point where you want the capturing process to start.
<p align="center">
   <img width="471" height="302" alt="image" src="https://github.com/user-attachments/assets/8bb20ec3-dc10-4efc-99ac-5a535a1592be" />
</p>

7. Set the zoom of the browser to 67%.
<p align="center">
   <img width="291" height="93" alt="image" src="https://github.com/user-attachments/assets/7053952a-9a38-47fd-b2df-690b9f7289bf" />
</p>

8. Click on a blank area of the page to ensure no buttons, text fields, or other elements are focused. 
<p align="center">
   
</p>

9. Press `PrtSc+O`.
<p align="center">
   <img width="219" height="129" alt="image" src="https://github.com/user-attachments/assets/93f3fbcd-c49a-4fb1-8200-17e3be3a8bd5" />
</p>

10. Enter the prefix for the file names such as `yyyy_MM_dd`, then press `Enter` or click on **OK** to start the program.
    (Any prefix would work.
    The program will just add `_ScreenshotNumber.JPG` after it.)
<p align="center">
   <img width="209" height="127" alt="image" src="https://github.com/user-attachments/assets/7bc53d6e-5802-4e12-86ae-c8e72d5d1cba" />
</p>

11. After hearing 5 beeps, the program will start the capturing process.
12. To stop the program, press `Backspace` once when the program is scrolling.
    The program will stop after it finished scrolling.
<p align="center">
   <img width="281" height="146" alt="image" src="https://github.com/user-attachments/assets/23a7ed75-1f0c-478d-a064-88436ea5518f" />
</p>

13. Check the directory that you have set to see the captured screenshots.
<p align="center">
    <img width="788" height="476" alt="image" src="https://github.com/user-attachments/assets/41e11014-46a4-4e3b-94cf-826aa731962c" />
</p>

## Future Roadmap
#### Possible new features:
- Implement ability to set the area to capture, possibility by selecting the top left and bottom right coordinate, 
  that only needs to set once, through a setting button in the initializing popup.

#### Possible improvements and bug fixes:
- Instead of manually snipping an image in the beginning to select the directory that the program will save its captured screenshots in,
  implement some way to select a directory in the initializing popup.
- Standardize the names used throughout the program.
- Update comments in the code.

## Extra Notes
The problem with this program is that it is dependent on the GUI design and behaviour of WhatsApp Web, which updates every once in a while. 
Thus, whenever there is an update, this program would need to be updated.
